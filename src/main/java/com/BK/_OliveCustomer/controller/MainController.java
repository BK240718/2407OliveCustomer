package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.Customer;
import com.BK._OliveCustomer.dto.Section;
import com.BK._OliveCustomer.service.CustomerService;
import com.BK._OliveCustomer.service.SectionService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequiredArgsConstructor
public class MainController {

    private final SectionService sectionService;
    private final CustomerService customerService;

    @GetMapping(value = "/")
    public String home() {
        return "main";
    }


    @GetMapping(value = "login")
    public String getLogin
            (@RequestParam(value = "redirect", required = false) String redirectUrl,
             Model model) {

        log.info("MainController getLogin Start");
        model.addAttribute("redirectUrl", redirectUrl);

        return "common/login";
    }


    @PostMapping(value = "login")
    public String postLogin(@ModelAttribute Customer customerP,
                            @RequestParam(value = "redirectUrl", required = false) String redirectUrl,
                            HttpSession session,
                            Model model) {

        log.info("MainController postLogin Start");

        Customer customer = customerService.oneCustomerForSignIn(customerP);

        if (customer != null) {
            session.setAttribute("customer", customer);
            return  "redirect:"+(redirectUrl != null ? redirectUrl : "main");
        } else {
            model.addAttribute("loginError", "Invalid email or password");
            return "common/login";
        }

    }


    @ResponseBody
    @RequestMapping(value = "mainListSection", method = RequestMethod.POST)
    public Map<String, Object> mainSecName() {

        System.out.println("MainController MainSecName Start");

        Map<String, Object> response = new HashMap<String, Object>();
        List<Section> listSection = sectionService.listSection();

        response.put("status", "200 OK");
        response.put("data", Map.of("listSection", listSection));

        return response;

    }




}
