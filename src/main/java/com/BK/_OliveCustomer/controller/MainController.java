package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.Customer;
import com.BK._OliveCustomer.dto.Section;
import com.BK._OliveCustomer.service.CustomerService;
import com.BK._OliveCustomer.service.SectionService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequiredArgsConstructor
public class MainController {

    private final SectionService sectionService;
    private final CustomerService customerService;

    @GetMapping(value = "/")
    public String home() {
        return "main";
    }


    @GetMapping(value = "login")
    public String getLogin
            (@RequestParam(value = "redirect", required = false) String redirectUrl,
             HttpServletRequest request,
             Model model) {

        log.info("MainController getLogin Start");
        log.info("redirectUrl = {}", redirectUrl);

        if (redirectUrl == null) {
            // 쿠키에서 redirectUrl 읽기
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if ("redirectUrl".equals(cookie.getName())) {
                        try {
                            redirectUrl = URLDecoder.decode(cookie.getValue(), "UTF-8");
                        } catch (UnsupportedEncodingException e) {
                            log.error("UnsupportedEncodingException: {}", e.getMessage());
                        }
                        break;
                    }
                }
            }
        }

        model.addAttribute("redirectUrl", redirectUrl);

        return "common/login";
    }


    @PostMapping(value = "login")
    public String postLogin(@ModelAttribute Customer customerP,
                            @RequestParam(value = "redirect", required = false) String redirectUrl,
                            HttpSession session,
                            HttpServletRequest request,
                            HttpServletResponse response,
                            Model model) {

        log.info("MainController postLogin Start");
        log.info("customerP.getEmail = {}", customerP.getEmail());
        log.info("redirectUrl = {}", redirectUrl);
        log.info("Session customerId = {}", session.getAttribute("customerId"));

        Customer customer = customerService.oneCustomerForSignIn(customerP);
        log.info("customer.getCustomerId() = {}", customer.getCustomerId());

        if (customer != null) {
            log.info("customer != null");
            session.setAttribute("customer", customer);
            session.setAttribute("customerId", customer.getCustomerId());
            log.info("Session customerId = {}", session.getAttribute("customerId"));

            // 쿠키에서 redirectUrl 읽기 및 삭제
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if ("redirectUrl".equals(cookie.getName())) {
                        try {
                            redirectUrl = URLDecoder.decode(cookie.getValue(), "UTF-8");
                        } catch (UnsupportedEncodingException e) {
                            log.error("UnsupportedEncodingException: {}", e.getMessage());
                        }
                        cookie.setMaxAge(0); // 쿠키 삭제
                        cookie.setPath("/"); // 쿠키 경로 설정
                        response.addCookie(cookie);
                        break;
                    }
                }
            }

            if (redirectUrl != null && !redirectUrl.isEmpty()) {
                return "redirect:" + redirectUrl;
            } else {
                return "redirect:/"; // 기본 페이지로 리디렉션
            }
        } else {

            String errorMessage = "Invalid email or password";
            model.addAttribute("loginError", errorMessage);

            // 로그에 오류 메시지 출력
            log.info("Login failed: " + errorMessage);

            return "common/login";
        }

    }


    @ResponseBody
    @RequestMapping(value = "mainListSection", method = RequestMethod.POST)
    public Map<String, Object> mainSecName() {

        System.out.println("MainController MainSecName Start");

        Map<String, Object> response = new HashMap<String, Object>();
        List<Section> listSection = sectionService.listSection();

        response.put("status", "200 OK");
        response.put("data", Map.of("listSection", listSection));

        return response;

    }




}
