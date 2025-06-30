package com.BK._OliveCustomer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Application extends SpringBootServletInitializer {
	// SpringBootServletInitializer를 상속한 이유:
	// → 외부 톰캣 서버(war 배포)로 실행될 때 초기 설정을 위해 사용됨
	// → 내장 톰캣이 아닌 외부 WAS에서 애플리케이션을 구동할 때 필요함

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		// 외부 톰캣에서 실행 시 이 클래스를 시작점으로 사용하겠다고 명시함
		return application.sources(Application.class);
	}

	public static void main(String[] args) {
		// Spring Boot 애플리케이션을 실행시키는 메인 메서드
		// → 개발 중 또는 JAR 실행 시 여기서 애플리케이션이 시작됨
		SpringApplication.run(Application.class, args);
	}

}
