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
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class CartController {

    private final CartNCartItemService cartNCartItemService;


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


    @GetMapping("listCartByCustomerId")
    public String listCartByCustomerId(HttpSession session, Model model) {

        Integer customerId = (Integer) session.getAttribute("customerId");

        if (customerId == null) {
            // 세션에 customerId가 없으면 로그인 페이지로 리다이렉트
            return "redirect:/login";
        }

        // 세션에서 customerId를 가져와서 서비스 메서드 호출
        Map<String, Object> listCartByCustomerId = cartNCartItemService.listCartByCustomerId(customerId);

        model.addAttribute("listCartByCustomerId", listCartByCustomerId.get("listCartByCustomerId"));
        model.addAttribute("subtotal", listCartByCustomerId.get("subtotal"));
        model.addAttribute("shippingCost", listCartByCustomerId.get("shippingCost"));
        model.addAttribute("grandTotal", listCartByCustomerId.get("grandTotal"));

        return "cart/listCart";
    }





}
