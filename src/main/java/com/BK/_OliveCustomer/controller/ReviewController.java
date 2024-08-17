package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.ItemDTL;
import com.BK._OliveCustomer.dto.Review;
import com.BK._OliveCustomer.service.ImgUploadService;
import com.BK._OliveCustomer.service.ItemDTLService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
public class ReviewController {

    private final ItemDTLService itemDTLService;
    private final ImgUploadService imgUploadService;

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


    @PostMapping(value = "insertReviewNVote")
    public String insertReviewNVote(@RequestParam("itemDtlId") int itemDtlId,
                                    @RequestParam("rating") int rating,
                                    @RequestParam("colors")List<String> colors,
                                    @RequestParam("content") String content,
                                    @RequestParam("reviewImg")MultipartFile[] reviewImgsFile) {

        System.out.println("ReviewController insertReviewNVote Start");

        // 1. reviewImg 업로드
        List<String> reviewImgUrls = new ArrayList<>();
        for (MultipartFile reviewImg : reviewImgsFile) {
            reviewImgUrls.add(imgUploadService.upload(reviewImg));
        }

        // 2. reviewImgUrls 리스트를 JSON 배열 형식으로 변환
        String reviewImgUrlsJson = imgUploadService.convertListToJson(reviewImgUrls);

        // 3. 업로드 된 이미지 URL 을 객체 Review 에 저장
        Review review = new Review();
        review.setReviewImg(reviewImgUrlsJson);

        // 4. Review Insert 작업



        return "redirect:/";
    }



}
