package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.CartItem;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Repository
@RequiredArgsConstructor
public class CartItemDaoImpl implements CartItemDao {

    private final SqlSession session;

    @Override
    public int insertCartItem(CartItem cartItem) {

        log.info("insertCartItem Start");

        int insertResult = 0;

        try {
            insertResult = session.insert("insertCartItem", cartItem);
        } catch (Exception e) {
            log.info("insertCartItem e.getMessage() = {}", e.getMessage());
        }

        return insertResult;
    }


    @Override
    public List<CartItem> listCartByCustomerId(Map<String, Object> params) {

        log.info("listCartByCustomerId Start");
        List<CartItem> listCartByCustomerId = null;

        try {
            listCartByCustomerId = session.selectList("listCartByCustomerId", params);
            log.info("listCartByCustomerId.size() = {}", listCartByCustomerId.size());
        } catch (Exception e) {
            log.info("listCartByCustomerId e.getMessage() = {}", e.getMessage());
        }

        return listCartByCustomerId;
    }

    @Override
    public int updateCartItemQuantity(Map<String, Object> params) {

        log.info("updateCartItemQuantity Start");
        int updateResult = 0;

        try {
            updateResult = session.update("updateCartItemQuantity", params);
            log.info("updateResult = {}", updateResult);
        } catch (Exception e) {
            log.info("updateCartItemQuantity e.getMessage() = {}", e.getMessage());
        }

        return updateResult;
    }


    @Override
    public int deleteCartItemNCart(CartItem cartItem) {

        log.info("deleteCartItemNCart");
        Map<String, Object> params = new HashMap<>();
        params.put("itemDtlId", cartItem.getItemDtlId());
        params.put("customerId", cartItem.getCustomerId());
        params.put("deleteResult", 0);  // OUT 파라미터를 0으로 초기화

        try {
            session.selectOne("deleteCartItemNCart", params);
            // OUT 파라미터에서 deleteResult 값을 가져옴
            // BigDecimal: NUMBER 타입은 Java에서는 BigDecimal로 반환되며,
            // 이를 Integer로 직접 캐스팅하면 오류가 발생
            BigDecimal deleteResult = (BigDecimal) params.get("deleteResult");
            log.info("deleteResult = {}", deleteResult);

            // BigDecimal 값을 int로 변환하여 반환
            return deleteResult != null ? deleteResult.intValue() : 0;
        } catch (Exception e) {
            log.info("e.getMessage() = {}", e.getMessage());
            return -1;  // 실패 시 1 반환
        }
    }

}
