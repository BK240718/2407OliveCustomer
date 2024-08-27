package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Cart;

import java.util.Map;

public interface CartDao {

    int insertCart(Map<String, Object> params);
}
