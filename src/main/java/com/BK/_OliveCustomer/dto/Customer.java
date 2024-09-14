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

    // 추가 필드
    private String phonePart1; // 010
    private String phonePart2; // 4567
    private String phonePart3; // 8901

    public void splitPhoneNum() {
        if (this.phoneNum != null && this.phoneNum.length() == 11) {
            this.phonePart1 = this.phoneNum.substring(0, 3);
            this.phonePart2 = this.phoneNum.substring(3, 7);
            this.phonePart3 = this.phoneNum.substring(7);
        }
    }
}
