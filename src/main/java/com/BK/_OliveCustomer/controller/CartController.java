package com.BK._OliveCustomer.controller;

import jakarta.servlet.http.HttpSession;
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
public class CartController {

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

        int itemDtlId   = Integer.parseInt(payload.get("itemDtlId").toString());
        int quantity    = Integer.parseInt(payload.get("quantity").toString());
        int customerId  = (int) session.getAttribute("customerId");

        Map<String, Object> response = new HashMap<>();
        response.put("success", true);

        return ResponseEntity.ok(response);
    }


}
