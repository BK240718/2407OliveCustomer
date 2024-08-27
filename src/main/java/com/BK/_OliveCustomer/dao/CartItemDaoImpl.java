package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.CartItem;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
@RequiredArgsConstructor
public class CartItemDaoImpl implements CartItemDao {

    private final SqlSession session;

    @Override
    public int insertCartItem(CartItem cartItem) {

        log.info("CartItemDaoImpl insertCartItem Start");

        int insertResult = 0;

        try {
            insertResult = session.insert("insertCartItem", cartItem);
        } catch (Exception e) {
            log.info("e.getMessage() = {}", e.getMessage());
        }

        return insertResult;
    }
}
