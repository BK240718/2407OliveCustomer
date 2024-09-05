package com.BK._OliveCustomer.service;

import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component // 스케줄러는 일반적으로 @Component 사용
@RequiredArgsConstructor
public class Scheduler {

    private final JdbcTemplate jdbcTemplate;

    @Scheduled(fixedRate = 1800000)     // 30분 (30 * 60 * 1000ms) 마다 실행
    public void deleteOldCartItemsNCart() {
        try {
            jdbcTemplate.execute("BEGIN DELETE_OLD_CART_ITEMS_N_CART; END;");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
