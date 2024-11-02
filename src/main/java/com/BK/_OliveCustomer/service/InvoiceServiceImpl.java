package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.InvoiceDao;
import com.BK._OliveCustomer.dto.*;
import com.BK._OliveCustomer.utils.SessionUtils;
import jakarta.servlet.http.HttpServletRequest;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class InvoiceServiceImpl implements InvoiceService {

    private final InvoiceDao invoiceDao;
    private final CartNCartItemService cartNCartItemService;

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

        // customerId 로 장바구니 리스트 가져오기
        Map<String, Object> cartData = cartNCartItemService.listCartByCustomerId(request.getCustomerId());

        // cartData에서 'listCartByCustomerId' 키로 리스트 가져오기
        List<CartItem> cartItems = (List<CartItem>) cartData.get("listCartByCustomerId");

        // 첫번째 cartId 가져오기
        String firstCartId = String.valueOf(cartItems.get(0).getCartId());

        // 상품명 리스트: 첫번째 colorName 가져오기
        String firstColorName = String.valueOf(cartItems.get(0).getColorName());

        // 첫번째 totalQuantity 가져오기
        int firstTotalQuantity = cartItems.get(0).getTotalQuantity();

        // 요청 Body 설정 - HashMap 형식으로 작성
        Map<String, Object> body = new HashMap<>();
        body.put("cid", KAKAO_CID);                                                 // 가맹점 코드(테스트용)
        body.put("partner_order_id", firstCartId);                                 // 주문번호: 첫번째 cartId를 String 타입으로 변환하여 주문번호로 사용
        body.put("partner_user_id", request.getCustomerId() != null ? String.valueOf(request.getCustomerId()) : "default_user_id");     // 회원 아이디
        body.put("item_name", firstColorName);       // 여러 상품 있을 경우 처리 필요
        body.put("quantity", String.valueOf(firstTotalQuantity));          // 상품 수량
        body.put("total_amount", request.getTotalPrice());      // 상품 총액
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
    public ApproveResponse payApprove(String tid, String pgToken, int totalPrice, HttpServletRequest request) {

        log.info("payApprove Start");
        log.info("결제승인 요청을 인증하는 토큰 pgToken: " + pgToken);

        // 세션에서 customerId 가져오기
        String customerIdStr = SessionUtils.getStringAttributeValue("customerId");
        if (customerIdStr == null) {
            customerIdStr = "default_user_id";     // 기본값 설정
        }

        // customerId를 Integer로 변환
        Integer customerId = Integer.parseInt(customerIdStr);

        // customerId로 장바구니 리스트 가져오기
        Map<String, Object> cartData = cartNCartItemService.listCartByCustomerId(customerId);

        // cartData 에서 'listCartByCustomerId' 키로 리스트 가져오기
        List<CartItem> cartItems = (List<CartItem>) cartData.get("listCartByCustomerId");

        // 첫번째 cartId 가져오기
        String firstCartId = String.valueOf(cartItems.get(0).getCartId());

        // totalPrice 값 가져오기
        int totalPrice1 = totalPrice;

        Map<String, String> parameters = new HashMap<>();
        parameters.put("cid", "TC0ONETIME");                // 가맹점 코드(테스트용)
        parameters.put("tid", tid);                         // 결제 고유번호
        parameters.put("partner_order_id", firstCartId);   // 주문번호
        parameters.put("partner_user_id", customerId.toString());      // 세션에서 가져온 회원 아이디
        parameters.put("pg_token", pgToken);                // 결제승인 요청을 인증하는 토큰

        HttpEntity<Map<String, String>> requestEntity = new HttpEntity<>(parameters, this.getHeaders());

        RestTemplate template = new RestTemplate();
        String url = "https://open-api.kakaopay.com/online/v1/payment/approve";
        ApproveResponse approveResponse = template.postForObject(url, requestEntity, ApproveResponse.class);
        log.info("결제 승인 응답 객체: " + approveResponse);

        // 승인 성공 시 DB에 주문 정보 저장
        if (approveResponse != null) {
            Invoice invoice = new Invoice();
            invoice.setCustomerId(customerId);
            invoice.setTotalPrice(totalPrice);
            invoice.setOrderDate(new Timestamp(System.currentTimeMillis()));
            invoice.setStatus(0);
            invoice.setRequest(request.getParameter("request"));

            insertInvoice(invoice);
        }

        return approveResponse;
    }

    @Transactional
    @Override
    public void insertInvoice(Invoice invoice) {

        log.info("insertInvoice Start");



    }

    // 카카오페이 측에 요청 시 헤더부에 필요한 값
    private HttpHeaders getHeaders() {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "SECRET_KEY " + KAKAO_SECRETKEY.trim());  // 공백 추가 "KakaoAK "
        headers.set("Content-Type", "application/json");

        log.info("Authorization Header: SECRET_KEY {}", KAKAO_SECRETKEY.trim());

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
