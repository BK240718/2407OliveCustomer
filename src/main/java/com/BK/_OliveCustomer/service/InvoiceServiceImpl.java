package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.InvoiceDao;
import com.BK._OliveCustomer.dto.ApproveResponse;
import com.BK._OliveCustomer.dto.Invoice;
import com.BK._OliveCustomer.dto.ReadyResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class InvoiceServiceImpl implements InvoiceService {

    private final InvoiceDao invoiceDao;

    // application-aws.yml에서 가져옴
    @Value("${kakao.secretkey}")
    private String KAKAO_SECRETKEY;

    @Value("${kakao.cid}")
    private String KAKAO_CID;


    @Override
    public List<Invoice> listInvoiceByCustomerId(int customerId) {

        log.info("InvoiceServiceImpl listInvoiceByCustomerId Start");

        List<Invoice> listInvoiceByCustomerId = invoiceDao.listInvoiceByCustomerId(customerId);
        log.info("listInvoiceByCustomerId.size() = {}", listInvoiceByCustomerId.size());
        log.info("listInvoiceByCustomerId.get(0).getItemDtlId() = {}", listInvoiceByCustomerId.get(0).getItemDtlId());

        return listInvoiceByCustomerId;
    }

    @Override
    public Map<String, Object> listInvoiceDTL(int invoiceId) {

        log.info("InvoiceServiceImpl listInvoiceDTL Start");

        // 1. listInvoiceDTL: 데이터 가져오기
        List<Invoice> listInvoiceDTL = invoiceDao.listInvoiceDTL(invoiceId);
        log.info("listInvoiceDTL.size() = {}", listInvoiceDTL.size());

        // 2. subTotal: 각 InvoiceDTL total 값 계산
        int subTotal = 0;
        for (Invoice invoice : listInvoiceDTL) {
            invoice.calculateTotalPriceForInvoiceDTL();
            subTotal += invoice.getTotalPriceForInvoiceDTL();   // 총합 계산
        }

        // 3. shippingCost: 배송비 계산
        int shippingCost = calculateShippingCost(subTotal);

        // 4. grandTotal: 최종 결제 금액 계산
        int grandTotal = subTotal + shippingCost;

        // 5. 결과를 맵에 담아 반환
        Map<String, Object > result = new HashMap<>();
        result.put("listInvoiceDTL", listInvoiceDTL);
        result.put("subTotal", subTotal);
        result.put("shippingCost", shippingCost);
        result.put("grandTotal", grandTotal);

        return result;
    }


    // 카카오페이 결제창 연결
    @Override
    public ReadyResponse prepareKakaoPayRequest(Invoice request) {

        log.info("prepareKakaoPayRequest Start");

        // 요청 Body 설정 - HashMap 형식으로 작성
        Map<String, Object> body = new HashMap<>();
        body.put("cid", KAKAO_CID);                                                 // 가맹점 코드(테스트용)
        body.put("partner_order_id", "1234567890");                                 // 주문번호
        body.put("partner_user_id", request.getCustomerId() != null ? String.valueOf(request.getCustomerId()) : "default_user_id");     // 회원 아이디
        body.put("item_name", "상품명");       // 여러 상품 있을 경우 처리 필요
        body.put("quantity", "1");          // 상품 수량
        body.put("total_amount", "1");
        body.put("tax_free_amount", "0");   // 비과세 금액
        body.put("approval_url", "http://localhost:8187/completed-kakao-pay");      // 결제 성공 시 URL
        body.put("fail_url", "http://localhost:8187/insertInvoiceDtl");             // 결제 취소 시 URL
        body.put("cancel_url", "http://localhost:8187/insertInvoiceDtl");           // 결제 실패 시 URL

        // 요청 엔티티 생성
        // HttpEntity : HTTP 요청 또는 응답에 해당하는 Http Header와 Http Body를 포함하는 클래스
        HttpEntity<Map<String, Object>> requestEntity = new HttpEntity<>(body, this.getHeaders());

        // RestTemplate를 이용해 API 호출
        // RestTemplate: Rest 방식 API를 호출할 수 있는 Spring 내장 클래스
        // REST API 호출 이후 응답을 받을 때까지 기다리는 동기 방식 (json, xml 응답)
        RestTemplate template = new RestTemplate();

        // 카카오페이 결제 API 요청 준비
        String url = "https://open-api.kakaopay.com/online/v1/payment/ready";

        // RestTemplate의 postForEntity : POST 요청을 보내고 ResponseEntity로 결과를 반환받는 메소드
        ResponseEntity<ReadyResponse> response = template.postForEntity(url, requestEntity, ReadyResponse.class);
        log.info("결제 준비 응답 객체 response.getBody() : " + response.getBody());

        return response.getBody();
    }

    
    // 카카오페이 결제 승인
    // 사용자가 결제 수단 선택 후 비밀번호를 입력해 결제 인증 완료한 뒤,
    // 최종적으로 결제 완료 처리하는 단계
    @Override
    public ApproveResponse payApprove(String tid, String pgToken) {

        Map<String, String> parameters = new HashMap<>();
        parameters.put("cid", "TC0ONETIME");                // 가맹점 코드(테스트용)
        parameters.put("tid", tid);                         // 결제 고유번호
        parameters.put("partner_order_id", "1234567890");   // 주문번호
        parameters.put("partner_user_id", "roommake");// !!! 회원 아이디 수정 필요!!!!
        parameters.put("pg_token", pgToken);                // 결제승인 요청을 인증하는 토큰


        return null;
    }

    // 카카오페이 측에 요청 시 헤더부에 필요한 값
    private HttpHeaders getHeaders() {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "KakaoAK " + KAKAO_SECRETKEY);  // 공백 추가 "KakaoAK "
        headers.set("Content-Type", "application/json");

        log.info("Authorization Header: KakaoAK {}", KAKAO_SECRETKEY);

        return headers;
    }


    // 배송비 계산
    public int calculateShippingCost(int subTotal) {

        if (subTotal >= 30000) {
            return 0;
        } else {
            return 2500;
        }
    }
}
