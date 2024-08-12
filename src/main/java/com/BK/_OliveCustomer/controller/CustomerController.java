package com.BK._OliveCustomer.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BK._OliveCustomer.dto.Customer;
import com.BK._OliveCustomer.service.CustomerService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
@Slf4j
public class CustomerController {

    private final CustomerService customerService;

    // for test
    @RequestMapping(value = "listCustomer")
    public String listCustomer(@RequestParam(value = "currentPage", required = false) String currentPage,
                               Customer customer,
                               Model model){
        System.out.println("CustomerController listCustomer Start");

        // Customer 전체 Cnt
        int totalCustomer = customerService.totalCustomer();

        model.addAttribute("totalCustomer", totalCustomer);

        return "main";
    }

    @RequestMapping(value = "oneCustomerForSignIn")
    public String oneCustomerForSignIn(@RequestHeader(value = "Referer", required = false) String referer,
                                       @ModelAttribute Customer customerP,
                                       HttpSession session,
                                       Model model) {

        System.out.println("CustomerController oneCustomerForSignIn Start");

        Customer customer = customerService.oneCustomerForSignIn(customerP);
        System.out.println("oneCustomerForSignIn customer.getCustID() = " + customer.getCustomerId());

        if (customer != null) {
            session.setAttribute("customerId", customer.getCustomerId());
            return "redirect:listInvoice";
        } else {
            session.setAttribute("loginError", "Invalid email or password");
            return "redirect:" + (referer != null ? referer : "/");
        }
    }

}
