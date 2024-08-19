package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dto.Review;

import java.util.List;

public interface ReviewNColorVoteService {

    int insertReviewNColorVotes(Review review, List<Integer> colors);


}
