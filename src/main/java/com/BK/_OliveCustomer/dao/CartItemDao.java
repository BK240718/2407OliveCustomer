package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.CartItem;

import java.util.List;
import java.util.Map;

public interface CartItemDao {

    int insertCartItem(CartItem cartItem);

    List<CartItem> listCartByCustomerId(Map<String, Object> params);
}
