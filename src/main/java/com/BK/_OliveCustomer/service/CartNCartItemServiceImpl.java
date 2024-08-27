package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.CartDao;
import com.BK._OliveCustomer.dao.CartItemDao;
import com.BK._OliveCustomer.dto.Cart;
import com.BK._OliveCustomer.dto.CartItem;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class CartNCartItemServiceImpl implements CartNCartItemService {

    private final CartDao cartDao;
    private final CartItemDao cartItemDao;

    @Transactional
    @Override
    public int insertCartNCartItem(Cart cart, CartItem cartItem) {

        log.info("CartNCartItemServiceImpl insertCartNCartItem Start");

        // 1. Cart insert
        Map<String, Object> params = new HashMap<>();
        params.put("customerId", cart.getCustomerId());
        int cartId = cartDao.insertCart(params);

        // 2. 생성된 cartId를 사용하여 CartItem insert
        cartItem.setCartId(cartId);
        cartItem.setAddedDate(LocalDateTime.now());
        cartItem.setStatus(1);

        int insertResult = cartItemDao.insertCartItem(cartItem);

        return insertResult;
    }
}
