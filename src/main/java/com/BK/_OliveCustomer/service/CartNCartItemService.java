package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dto.Cart;
import com.BK._OliveCustomer.dto.CartItem;

public interface CartNCartItemService {

    int insertCartNCartItem(Cart cart, CartItem cartItem);
}
