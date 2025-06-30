package com.BK._OliveCustomer.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

        // 세션이 없거나, 세션에 고객 ID가 없으면
        if (session == null || session.getAttribute("customerId") == null) {
            String redirectUrl = request.getHeader("referer");  // 리디렉션 URL을 가져옴

            // Ajax 요청인지 확인
            if ("XMLHttpRequest".equals(request.getHeader("X-Requested-With"))) {
                log.info("Ajax 요청 감지");

                // 요청 본문에서 redirectUrl을 추출

                // 클라이언트가 서버로 보낸 데이터(요청 본문)를 읽어들임
                // request.getReader()로 입력 스트림을 가져오고,
                // lines()로 줄 단위로 읽어서 각각의 줄을 이어붙임.
                // 결국, 요청 본문을 하나의 긴 문자열로 만들어서 requestBody에 저장
                String requestBody = request.getReader().lines().reduce("", String::concat);

                // requestBody 문자열에서 "redirectUrl"이라는 키워드를 찾아 위치를 확인
                // "redirectUrl" 뒤에 오는 실제 URL 부분을 가져오기 위해 시작 위치를 계산
                int urlStartIndex = requestBody.indexOf("\"redirectUrl\":\"") + "\"redirectUrl\":\"".length();

                // 위에서 찾은 시작 위치부터 다음에 나오는 따옴표(")의 위치까지를 URL의 끝 위치로 지정
                int urlEndIndex = requestBody.indexOf("\"", urlStartIndex);

                // 위에서 찾은 시작 위치와 끝 위치를 이용해 실제 redirectUrl을 추출
                // 이 추출된 URL은 인코딩된 상태라서, 사람이 읽을 수 있는 형태로 변환(URL 디코딩)
                redirectUrl = URLDecoder.decode(requestBody.substring(urlStartIndex, urlEndIndex), "UTF-8");

                log.info("Extracted redirectUrl from Ajax request: {}", redirectUrl);
            }

            // 사용자가 로그인 후 다시 방문할 페이지의 URL을 쿠키에 저장
            // redirectUrl 값을 쿠키에 저장하기 위해 URL을 인코딩 (특수 문자를 안전하게 전송하기 위해)
            // "redirectUrl"이라는 이름으로 쿠키를 생성하고, 해당 값을 인코딩된 상태로 저장
            Cookie cookie = new Cookie("redirectUrl", URLEncoder.encode(redirectUrl, "UTF-8"));

            // 쿠키가 어디에서 유효한지를 설정. "/"로 설정하면 웹 애플리케이션의 모든 경로에서 이 쿠키를 사용할 수 있음
            cookie.setPath("/");
            cookie.setMaxAge(60 * 60); // 쿠키 유효 기간 1시간
            response.addCookie(cookie); // 쿠키를 응답에 추가하여 클라이언트에게 전송

            if ("XMLHttpRequest".equals(request.getHeader("X-Requested-With"))) {

                // Ajax 요청 일 때 Json 응답 반환
                log.info("Ajax 요청 일 때 Json 응답 반환");

                // HTTP 상태 코드를 401 (Unauthorized)로 설정.
                // 이 상태 코드는 사용자가 인증되지 않았음을 나타내며,
                // 로그인 또는 인증이 필요한 요청에 대해 서버가 응답하는 표준 코드임
                response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");

                String jsonResponse = String.format("{\"redirectUrl\": \"/login?redirect=%s\"}",
                        URLEncoder.encode(redirectUrl, "UTF-8"));
                response.getWriter().write(jsonResponse);

                return false; // 요청 처리를 중단하고 응답 반환
            } else {
                // 일반 요청일 경우 로그인 페이지로 리디렉션
                log.info("일반 요청");
                log.info("redirectUrl = {}", redirectUrl);

                // 로그인 페이지로 리디렉션, url 을 쿼리 파라미터로 추가
                // url 에 포함될 수 있는 특수 문자를 인코딩하여 안전하게 전송
                response.sendRedirect("/login?redirect="+ URLEncoder.encode(redirectUrl, "UTF-8"));

                return false;   // 요청 처리를 중단하고 리디렉션
            }
        }

        // 로그인 되어 있으면 요청 진행
        return true;
    }
}
