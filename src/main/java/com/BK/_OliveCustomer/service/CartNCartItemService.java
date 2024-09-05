package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dto.Cart;
import com.BK._OliveCustomer.dto.CartItem;

import java.util.List;
import java.util.Map;

public interface CartNCartItemService {

    int insertCartNCartItem(Cart cart, CartItem cartItem);

    Map<String, Object> listCartByCustomerId(Integer customerId);

    int updateCartItemQuantity(CartItem cartItem, int adjustmentValue);

    int deleteCartItemNCart(CartItem cartItem);
}
