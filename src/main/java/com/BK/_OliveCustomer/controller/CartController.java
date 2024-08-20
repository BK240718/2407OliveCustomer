package com.BK._OliveCustomer.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class CartController {

    @RequestMapping(value = "listCart")
    public String listCart(Model model) {

        log.info("CartController listCart Start");

        return "cart/listCart";
    }
}
