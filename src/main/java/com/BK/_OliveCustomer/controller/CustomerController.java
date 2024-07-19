package com.BK._OliveCustomer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BK._OliveCustomer.model.Customer;
import com.BK._OliveCustomer.service.CustomerService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
@Slf4j
public class CustomerController {

    private final CustomerService cs;

    @RequestMapping(value = "listCustomer")
    public String customerList(Customer customer,@RequestParam(value = "currentPage", required = false) String currentPage, Model model){
        System.out.println("CustomerController Start");
        // Customer 전체 Cnt
        int totalCustomer = cs.totalCustomer();

        model.addAttribute("totalCustomer", totalCustomer);

        return "list";
    }
}
