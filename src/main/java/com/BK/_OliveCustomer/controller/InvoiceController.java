package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.Customer;
import com.BK._OliveCustomer.dto.Invoice;
import com.BK._OliveCustomer.service.CartNCartItemService;
import com.BK._OliveCustomer.service.CustomerService;
import com.BK._OliveCustomer.service.InvoiceService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import java.util.Collections;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class InvoiceController {

    private final InvoiceService invoiceService;
    private final CartNCartItemService cartNCartItemService;
    private final CustomerService customerService;

    // application-aws.yml에서 가져옴
    @Value("${kakao.rest-api-key}")
    private String KAKAO_REST_API_KEY;

    @RequestMapping(value = "listInvoice")
    public String listInvoice(HttpSession session,
                              Model model) {

        System.out.println("InvoiceController listInvoice Start");

        Integer customerIdObj = (Integer) session.getAttribute("customerId");
        if (customerIdObj == null) {
            return "redirect:/";
        }

        int customerId = customerIdObj;
        System.out.println("InvoiceController customerId = " + customerId);

        List<Invoice> listInvoiceByCustomerId = invoiceService.listInvoiceByCustomerId(customerId);
        System.out.println("InvoiceController listInvoiceByCustomerId.get(0).getItemDtlId() = " + listInvoiceByCustomerId.get(0).getItemDtlId());

        model.addAttribute("listInvoiceByCustomerId", listInvoiceByCustomerId);

        return "invoice/listInvoice";
    }

    @RequestMapping(value = "listInvoiceDTL")
    public String  listInvoiceDTL(@RequestParam("invoiceId") int invoiceId,
                                  Model model) {

        System.out.println("InvoiceController listInvoiceDTL Start");

        Map<String, Object> result = invoiceService.listInvoiceDTL(invoiceId);
        List<Invoice> listInvoiceDTL = (List<Invoice>) result.get("listInvoiceDTL");
        int subTotal = (int) result.get("subTotal");
        int shippingCost = (int) result.get("shippingCost");
        int grandTotal = (int) result.get("grandTotal");

        System.out.println("InvoiceController listInvoiceDTL.size() = " + listInvoiceDTL.size());

        model.addAttribute("listInvoiceDTL", listInvoiceDTL);
        model.addAttribute("subTotal", subTotal);
        model.addAttribute("shippingCost", shippingCost);
        model.addAttribute("grandTotal", grandTotal);

        return "invoice/listInvoiceDTL";
    }


    @RequestMapping(value = "insertInvoiceDtl")
    public String insertInvoiceDtl(HttpSession session, Model model) {

        log.info("insertInvoiceDtl Start");

        Integer customerId = (Integer) session.getAttribute("customerId");

        if (customerId == null) {
            // 세션에 customerId가 없으면 로그인 페이지로 리다이렉트
            return "redirect:/login";
        }

        // 세션에서 customerId를 가져와서 서비스 메서드 호출
        Map<String, Object> listCartByCustomerId = cartNCartItemService.listCartByCustomerId(customerId);

        // select 받는분, 연락처, 주소
        Customer customer = customerService.oneCustomerForInvoice(customerId);

        log.info("customer.getCustomerName() = {}", customer.getCustomerName());
        log.info("customer.getAddress1() = {}", customer.getAddress1());

        model.addAttribute("listCartByCustomerId", listCartByCustomerId.get("listCartByCustomerId"));
        model.addAttribute("subtotal", listCartByCustomerId.get("subtotal"));
        model.addAttribute("shippingCost", listCartByCustomerId.get("shippingCost"));
        model.addAttribute("grandTotal", listCartByCustomerId.get("grandTotal"));
        model.addAttribute("customer", customer);

        return "invoice/insertInvoiceDtl";
    }




    @PostMapping("/start-kakao-pay")
    public ResponseEntity<Map<String, Object>> startKakaoPay(@RequestBody Invoice request) {

        log.info("startKakaoPay Start");
        log.info("CustomerId(): {}", request.getCustomerId());
        log.info("request data: {}", request);

        // 카카오페이 결제 API 요청 준비
        String url = "https://kapi.kakao.com/v1/payment/ready";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
        headers.set("Authorization", "KakaoAK " + KAKAO_REST_API_KEY);  // 공백 추가 "KakaoAK "

        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("cid", "TC0ONETIME");
        body.add("partner_order_id", "2409141145");
        body.add("partner_user_id", request.getCustomerId() != null ? String.valueOf(request.getCustomerId()) : "default_user_id");
        body.add("item_name", "상품명");       // 여러 상품 있을 경우 처리 필요
        body.add("quantity", "1");          // 상품 수량
        body.add("total_amount", "1");
        body.add("tax_free_amount", "0");   // 비과세 금액
        body.add("approval_url", "http://localhost:8187/insertInvoiceDtl");
        body.add("fail_url", "http://localhost:8187/insertInvoiceDtl");
        body.add("cancel_url", "http://localhost:8187/insertInvoiceDtl");

        HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(body, headers);
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Map> response = restTemplate.exchange(url, HttpMethod.POST, requestEntity, Map.class);

        Map<String, Object> responseBody = response.getBody();
        String nextRedirectPcUrl = (String) responseBody.get("next_redirect_pc_url");

        return ResponseEntity.ok(Collections.singletonMap("nextRedirectPcUrl", nextRedirectPcUrl));
    }

}
