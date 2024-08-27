package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.Cart;
import com.BK._OliveCustomer.dto.CartItem;
import com.BK._OliveCustomer.service.CartNCartItemService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class CartController {

    private final CartNCartItemService cartNCartItemService;

    @RequestMapping(value = "listCart")
    public String listCart(Model model) {

        log.info("CartController listCart Start");

        return "cart/listCart";
    }


    @ResponseBody
    @PostMapping("/insert-to-cart")
    public ResponseEntity<Map <String, Object>> insert2Cart
            (@RequestBody Map<String, Object> payload,
             HttpSession session) {

        log.info("CartController insert2Cart Start");
        log.info("Received payload: {}", payload);

        int itemDtlId   = Integer.parseInt(payload.get("itemDtlId").toString());
        int quantity    = Integer.parseInt(payload.get("quantity").toString());
        int customerId  = (int) session.getAttribute("customerId");

        Cart cart = new Cart();
        cart.setCustomerId(customerId);

        CartItem cartItem = new CartItem();
        cartItem.setItemDtlId(itemDtlId);
        cartItem.setQuantity(quantity);

        int insertResult = cartNCartItemService.insertCartNCartItem(cart, cartItem);

        Map<String, Object> response = new HashMap<>();
        response.put("success", true);

        return ResponseEntity.ok(response);
    }


}
