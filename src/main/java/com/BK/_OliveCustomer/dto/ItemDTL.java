package com.BK._OliveCustomer.dto;

import lombok.Data;

@Data
public class ItemDTL {
    private int itemDtlId;
    private String yearMonth;
    private int initialFinal;
    private int itemId;
    private int staffId;
    private String colorName;
    private int purchasePrice;
    private int salesPrice;
    private int ItemDtlQty;
    private String regDate;
    private int status;
    private String thumbnail;
    private String detailImg;
    private String colorImg;

    // 추가 필드
    private String itemName;    // i.itemName
    private int sectionId;      // st.sectionId


    // 조회용
    private String search;      private String keyword;
    private String pageNum;
    private int start;          private int end;
}
