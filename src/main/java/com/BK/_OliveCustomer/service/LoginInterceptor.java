package com.BK._OliveCustomer.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

@Component // 빈 등록
@Slf4j
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler) throws Exception {

        log.info("HandlerInterceptor preHandle Start");

        // 세션이 이미 존재하는 지 확인 (false는 세션이 없을 때 새로 생성하지 않음을 의미)
        //                    세션이 존재하는지        없으면 새로 생성 X
        // 있으면 반환, 없으면 null
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("customerId") == null) {

            String redirectUrl = request.getHeader("referer");

            // Ajax 요청 처리
            if ("XMLHttpRequest".equals(request.getHeader("X-Requested-With"))) {
                log.info("Ajax 요청 감지");

                String requestBody = request.getReader().lines().reduce("", String::concat);
                int urlStartIndex = requestBody.indexOf("\"redirectUrl\":\"") + "\"redirectUrl\":\"".length();
                int urlEndIndex = requestBody.indexOf("\"", urlStartIndex);
                redirectUrl = URLDecoder.decode(requestBody.substring(urlStartIndex, urlEndIndex), "UTF-8");

                log.info("Extracted redirectUrl from Ajax request: {}", redirectUrl);
            }

            // 쿠키에 URL 저장
            Cookie cookie = new Cookie("redirectUrl", URLEncoder.encode(redirectUrl, "UTF-8"));
            cookie.setPath("/");
            cookie.setMaxAge(60 * 60); // 쿠키 유효 기간 1시간
            response.addCookie(cookie);

            if ("XMLHttpRequest".equals(request.getHeader("X-Requested-With"))) {

                // Ajax 요청 일 때 Json 응답 반환
                log.info("Ajax 요청 일 때 Json 응답 반환");

                // HTTP 상태 코드를 401 (Unauthorized)로 설정.
                // 이 상태 코드는 사용자가 인증되지 않았음을 나타냄.
                response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");

                String jsonResponse = String.format("{\"redirectUrl\": \"/login?redirect=%s\"}",
                        URLEncoder.encode(redirectUrl, "UTF-8"));
                response.getWriter().write(jsonResponse);

                return false;
            } else {
                // 일반 요청
                log.info("일반 요청");
                log.info("redirectUrl = {}", redirectUrl);

                // 로그인 페이지로 리디렉션, url 을 쿼리 파라미터로 추가
                // url 에 포함될 수 있는 특수 문자를 인코딩하여 안전하게 전송
                response.sendRedirect("/login?redirect="+ URLEncoder.encode(redirectUrl, "UTF-8"));

                return false;
            }
        }

        // 로그인 되어 있으면 요청 진행
        return true;
    }
}
