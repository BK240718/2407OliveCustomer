package com.BK._OliveCustomer.dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class CartItem {
    private int cartItemId;
    private int cartId;
    private int itemDtlId;
    private int quantity;
    private LocalDateTime addedDate;
    private int status;

    // 추가 필드
    private Integer customerId; // c.customerId
    private String colorImg;    // i.colorImg
    private String colorName;   // i.colorName
    private int salesPrice;     // i.salesPrice
    private String itemName;    // it.itemName

    // 새로운 필드
    private int totalQuantity;  // SUM(ci.QUANTITY) as totalQuantity
    private int totalPrice;     // SUM(ci.QUANTITY * i.SALESPRICE) as totalPrice
}
