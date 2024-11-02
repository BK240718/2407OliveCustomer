package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.ApproveResponse;
import com.BK._OliveCustomer.dto.Customer;
import com.BK._OliveCustomer.dto.Invoice;
import com.BK._OliveCustomer.dto.ReadyResponse;
import com.BK._OliveCustomer.service.CartNCartItemService;
import com.BK._OliveCustomer.service.CustomerService;
import com.BK._OliveCustomer.service.InvoiceService;
import com.BK._OliveCustomer.utils.SessionUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class InvoiceController {

    private final InvoiceService invoiceService;
    private final CartNCartItemService cartNCartItemService;
    private final CustomerService customerService;



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
    public ResponseEntity<ReadyResponse> startKakaoPay(@RequestBody Invoice requestP) {

        log.info("startKakaoPay Start");
        log.info("CustomerId(): {}", requestP.getCustomerId());
        log.info("TotalPrice(): {}", requestP.getTotalPrice());
        log.info("요청사항: {}", requestP.getRequest());
        log.info("requestP data: {}", requestP);

        // 카카오페이 결제 준비하기
        ReadyResponse readyResponse =  invoiceService.prepareKakaoPayRequest(requestP);

        // 세션에 결제 고유번호(tid) 저장
        SessionUtils.addAttribute("tid", readyResponse.getTid());
        log.info("결제 고유 번호 readyResponse.getTid() = {}", readyResponse.getTid());
        
        // readyResponse 객체 반환
        return ResponseEntity.ok(readyResponse);
    }

    @GetMapping("completed-kakao-pay")
    public String completedKakaoPay(@RequestParam("pg_token") String pgToken,
                                    @RequestParam("totalPrice") int totalPrice,
                                    HttpServletRequest request,
                                    Model model) {

        log.info("completedKakaoPay Start");

        String tid = SessionUtils.getStringAttributeValue("tid");
        log.info("결제승인 요청을 인증하는 토큰 pgToken: " + pgToken);
        log.info("결제 고유 번호 tid: " + tid);
        log.info("총 가격 totalPrice: " + totalPrice);

        // 카카오 결제 요청하기
        ApproveResponse approveResponse = invoiceService.payApprove(tid, pgToken, totalPrice, request);

        // 결제 승인 응답 객체를 모델에 추가 (JSP에서 접근할 수 있도록)
        model.addAttribute("approveResponse", approveResponse);

        // 'pgToken'도 모델에 추가
        model.addAttribute("pgToken", pgToken);

        return "invoice/completed-kakao-pay";
    }




}
