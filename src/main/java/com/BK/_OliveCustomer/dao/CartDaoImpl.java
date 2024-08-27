package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Cart;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Map;

@Slf4j
@Repository
@RequiredArgsConstructor
public class CartDaoImpl implements CartDao {

    private final SqlSession session;


    @Override
    public int insertCart(Map<String, Object> params) {

        log.info("CartDaoImpl insertCart Start");
        int cartId = 0;

        try {
            // CALL 프로시저 실행
            session.selectOne("insertCart", params);

            // OUT 파라미터에서 cartId 값을 가져옴
            // BigDecimal: NUMBER 타입은 Java에서는 BigDecimal로 반환되며,
            // 이를 Integer로 직접 캐스팅하면 오류가 발생
            BigDecimal bdcartId = (BigDecimal) params.get("cartId");
            cartId = bdcartId.intValue();
            log.info("cartId = {}", cartId);
        } catch (Exception e) {
            log.info("e.getMessage() = {}", e.getMessage());
        }

        return  cartId;
    }
}
