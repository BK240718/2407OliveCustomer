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
}
