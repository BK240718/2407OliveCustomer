package com.BK._OliveCustomer.dto;

import lombok.Data;

@Data
public class Customer {

    private Integer customerId;
    private String profileImg;
    private String customerName;
    private String password;
    private String email;
    private String phoneNum;
    private String address1;
    private String address2;
}
