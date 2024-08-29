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
                // 쿠키 배열에서 하나씩 확인하면서 "redirectUrl"이라는 이름의 쿠키를 찾음
                for (Cookie cookie : cookies) {
                    if ("redirectUrl".equals(cookie.getName())) {
                        try {
                            // 해당 쿠키의 값을 디코딩해서 redirectUrl에 저장
                            // 쿠키에 저장된 URL은 인코딩된 상태이므로, 다시 사람이 읽을 수 있는 형태로 변환함
                            redirectUrl = URLDecoder.decode(cookie.getValue(), "UTF-8");
                        } catch (UnsupportedEncodingException e) {
                            // 인코딩 관련 오류가 발생하면 로그에 오류 메시지를 출력
                            log.error("UnsupportedEncodingException: {}", e.getMessage());
                        }
                        // 사용 후 해당 쿠키를 삭제하기 위해 유효 기간을 0으로 설정
                        // 클라이언트의 브라우저에서 이 쿠키가 삭제됨
                        cookie.setMaxAge(0);
                        cookie.setPath("/"); // 쿠키 경로 설정
                        response.addCookie(cookie);
                        break;  // 쿠키를 찾았으니 더 이상 루프를 돌 필요가 없음
                    }
                }
            }

            if (redirectUrl != null && !redirectUrl.isEmpty()) {
                // 리디렉션 URL이 존재할 경우 해당 URL로 리디렉션
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


    @ModelAttribute
    public void addcommonAttributes(Model model, HttpSession session) {

        log.info("addcommonAttributes Start");

        Integer customerId = (Integer) session.getAttribute("customerId");

        if (customerId != null) {

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
