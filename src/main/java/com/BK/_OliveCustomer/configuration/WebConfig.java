package com.BK._OliveCustomer.configuration;

import com.BK._OliveCustomer.service.LoginInterceptor;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration  // 스프링 설정 클래스
@RequiredArgsConstructor
public class WebConfig implements WebMvcConfigurer {

    private final LoginInterceptor loginInterceptor;    // 로그인 인터셉터 주입

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(loginInterceptor)       // 인터셉터 등록
                .addPathPatterns("/insert-to-cart");    // 특정 경로 인터셉터
    }
}
