package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.ColorVoteDao;
import com.BK._OliveCustomer.dao.ReviewDao;
import com.BK._OliveCustomer.dto.ColorVote;
import com.BK._OliveCustomer.dto.Review;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
@RequiredArgsConstructor
public class ReviewNColorVoteServiceImpl implements ReviewNColorVoteService {

    private final ReviewDao reviewDao;
    private final ColorVoteDao colorVoteDao;

    @Transactional
    @Override
    public int insertReviewNColorVotes(Review review, List<Integer> colors) {

        log.info("ReviewNColorVoteServiceImpl insertReviewNColorVotes Start");

        // 1. Review Insert 작업
        Map<String, Object> params = new HashMap<>();
        params.put("P_RATING", review.getRating());
        params.put("P_CONTENT", review.getContent());
        params.put("P_REVIEWIMG", review.getReviewImg());
        params.put("P_ITEMDTLID", review.getItemDtlId());
        int reviewId = reviewDao.insertReview(params);
        
        // 2. ColorVote Insert 작업
        int insertResult = 0;
        for (int color : colors) {
            ColorVote colorVote = new ColorVote();
            colorVote.setItemDtlId(review.getItemDtlId());
            colorVote.setReviewId(reviewId);
            colorVote.setColor(color);
            insertResult += colorVoteDao.insertColorVote(colorVote);
            log.info("ReviewNColorVoteServiceImpl insertReviewNColorVotes insertResult = {}", insertResult);
        }

        return insertResult;
    }
}
