package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dto.Cart;
import com.BK._OliveCustomer.dto.CartItem;

import java.util.List;

public interface CartNCartItemService {

    int insertCartNCartItem(Cart cart, CartItem cartItem);

    List<CartItem> listCartByCustomerId(Integer customerId);
}
