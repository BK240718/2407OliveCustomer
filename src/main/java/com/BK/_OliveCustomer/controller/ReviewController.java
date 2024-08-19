package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.ItemDTL;
import com.BK._OliveCustomer.dto.Review;
import com.BK._OliveCustomer.service.ImgUploadService;
import com.BK._OliveCustomer.service.ItemDTLService;
import com.BK._OliveCustomer.service.ReviewNColorVoteService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    private final ReviewNColorVoteService reviewNColorVoteService;

    @RequestMapping(value = "listReview")
    public String listReview(Model model) {
        return "review/listReview";
    }

    @RequestMapping(value = "popupToInsertReview")
    public String popupToInsertReview(@RequestParam("itemDtlId") int itemDtlId,
                                      Model model) {

        log.info("ReviewController popupToInsertReview Start");
        log.info("itemDtlId = {}", itemDtlId);

        ItemDTL itemDTL = new ItemDTL();
        itemDTL = itemDTLService.oneItemDTL(itemDtlId);

        model.addAttribute("itemDTL", itemDTL);
        log.info("itemDTL.getItemDtlId() = {}", itemDTL.getItemDtlId());

        return "review/popupToInsertReview";
    }


    @PostMapping(value = "insertReviewNVote")
    public String insertReviewNVote(@RequestParam("itemDtlId") int itemDtlId,
                                    @RequestParam("rating") int rating,
                                    @RequestParam("colors")List<Integer> colors,
                                    @RequestParam("content") String content,
                                    @RequestParam("reviewImg")MultipartFile[] reviewImgsFile,
                                    Model model) {

        log.info("ReviewController insertReviewNVote Start");

        // 1. reviewImg 업로드
        List<String> reviewImgUrls = new ArrayList<>();
        for (MultipartFile reviewImg : reviewImgsFile) {
            reviewImgUrls.add(imgUploadService.upload(reviewImg));
        }

        // 2. reviewImgUrls 리스트를 JSON 배열 형식으로 변환
        String reviewImgUrlsJson = imgUploadService.convertListToJson(reviewImgUrls);

        // 3. Review 객체 생성
        Review review = new Review();
        review.setRating(rating);
        review.setContent(content);
        review.setReviewImg(reviewImgUrlsJson);
        review.setItemDtlId(itemDtlId);

        // 4. Review 및 ColorVote Insert 작업
        try {
            int insertResult = reviewNColorVoteService.insertReviewNColorVotes(review, colors);
            log.info("ReviewController insertReviewNVote insertResult = {}", insertResult);
        } catch (Exception e) {
            log.error("Failed to insert review & colorVotes", e);
            model.addAttribute("msg", "입력 실패");
            return "forward:popupToInsertReview";
        }

        return "forward:popupToInsertReview";
    }



}
