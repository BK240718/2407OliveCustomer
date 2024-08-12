package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.ItemDTL;
import com.BK._OliveCustomer.service.ItemDTLService;
import com.BK._OliveCustomer.service.Paging;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
public class ItemDTLController {

    private final ItemDTLService itemDTLService;

    @RequestMapping(value = "listItemDTLBySection")
    public String listItemDTLBySection(@RequestParam("sectionId") int sectionId,
                                       @RequestParam(value = "currentPage", required = false) String currentPage,
                                       Model model) {

        System.out.println("ItemDTLController listItemDTLBySection Start");

        // 1. ItemDTL 객체 생성 및 sectionId 설정
        ItemDTL itemDTL = new ItemDTL();
        itemDTL.setSectionId(sectionId);
        System.out.println("itemDTL.getSectionId() = " + itemDTL.getSectionId());

        // 2. ItemDTL by SectionId 전체 Cnt
        int countItemDTLBySection = itemDTLService.countItemDTLBySection(sectionId);

        // 3. Paging
        Paging page = new Paging(countItemDTLBySection, currentPage);

        itemDTL.setStart(page.getStart());  // 시작 시 1
        itemDTL.setEnd(page.getEnd());      // 시작 시 10

        // 3. Select List
        List<ItemDTL> listItemDTLBySection = itemDTLService.listItemDTLBySection(itemDTL);
        System.out.println("ItemDTLController listItemDTLBySection.size() = " + listItemDTLBySection.size());

        model.addAttribute("countItemDTLBySection",countItemDTLBySection);
        model.addAttribute("listItemDTLBySection",listItemDTLBySection);
        model.addAttribute("sectionId",sectionId);
        model.addAttribute("page",page);

        return "listItemDTLBySection";
    }


    @RequestMapping(value = "oneItemDTL")
    public String oneItemDTL(@RequestParam("itemDTLId") int itemDTLId,
                             Model model) {

        System.out.println("ItemDTLController oneItemDTL Start");

        ItemDTL itemDTL = itemDTLService.oneItemDTL(itemDTLId);

        // JSON 문자열을 List로 변환
        String thumbnailJson = itemDTL.getThumbnail();
        List<String> thumbnailList = itemDTLService.convertJsonToList(thumbnailJson);
        String detailImgJson = itemDTL.getDetailImg();
        List<String> detailImgList = itemDTLService.convertJsonToList(detailImgJson);

        // Related Items
        List<ItemDTL> listItemDTLByItemId = itemDTLService.listItemDTLByItemId(itemDTL);

        model.addAttribute("itemDTL", itemDTL);
        model.addAttribute("thumbnailList", thumbnailList);
        model.addAttribute("detailImgList", detailImgList);
        model.addAttribute("listItemDTLByItemId", listItemDTLByItemId);

        return "oneItemDTL";
    }


}
