package com.BK._OliveCustomer.dto;

import lombok.Data;

@Data
public class Review {
    private int reviewId;
    private int rating;
    private String content;
    private String created;
    private String reviewImg;
    private int itemDtlId;
}
