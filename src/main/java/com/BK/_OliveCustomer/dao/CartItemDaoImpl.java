package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.CartItem;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
}
