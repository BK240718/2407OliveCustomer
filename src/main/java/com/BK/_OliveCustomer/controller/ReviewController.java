package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.ItemDTL;
import com.BK._OliveCustomer.service.ItemDTLService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
@RequiredArgsConstructor
public class ReviewController {

    private final ItemDTLService itemDTLService;

    @RequestMapping(value = "listReview")
    public String listReview(Model model) {
        return "review/listReview";
    }

    @RequestMapping(value = "popupToInsertReview")
    public String popupToInsertReview(@RequestParam("itemDtlId") int itemDtlId,
                                      Model model) {

        System.out.println("ReviewController popupToInsertReview Start");
        System.out.println("itemDtlId = " + itemDtlId);

        ItemDTL itemDTL = new ItemDTL();
        itemDTL = itemDTLService.oneItemDTL(itemDtlId);

        model.addAttribute("itemDTL", itemDTL);
        System.out.println("itemDTL.getItemDtlId() = " + itemDTL.getItemDtlId());

        return "review/popupToInsertReview";
    }

}
