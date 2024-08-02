package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.Section;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
public class ItemDTLController {

    @RequestMapping(value = "listItemDTLBySection")
    public String listItemDTLBySection(@RequestParam("sectionId") int sectionId,
                                       Model model) {

        System.out.println("ItemDTLController listItemDTLBySection Start");


        return "listItemDTLBySection";
    }
}
