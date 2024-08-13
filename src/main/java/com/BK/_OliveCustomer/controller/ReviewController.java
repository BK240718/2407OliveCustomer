package com.BK._OliveCustomer.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class ReviewController {

    @RequestMapping(value = "listReview")
    public String listReview(Model model) {
        return "review/listReview";
    }

    @RequestMapping(value = "formToInsertReview")
    public String formToInsertReview(Model model) {
        return "review/formToInsertReview";
    }

}
