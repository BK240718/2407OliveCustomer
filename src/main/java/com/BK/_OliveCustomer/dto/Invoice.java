package com.BK._OliveCustomer.dto;

import lombok.Data;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Data
public class Invoice {
    private int invoiceId;
    private int customerId;
    private String orderDate;
    private int totalPrice;
    private int status;
    private String request;
    private String address1;
    private String address2;
    private String receiver;
    private String phoneNum;

    // 추가 필드
    private int invoiceDtlId;   // invDTL.invoiceDtlId
    private int invoiceDtlQty;  // invDTL.invoiceDtlQty
    private int price;          // invDTL.price
    private String colorName;   // itDTL.colorName
    private String colorImg;    // itDTL.colorImg
    private String itemName;    // it.itemName


    // String Date 문자열을 Date 객체로 변환
    public Date convertStrToDate(String dateStr) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            return sdf.parse(dateStr);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }


    // 각 InvoiceDTL 총계 = 제품 판매가 * 수량
    public int getTotalPriceForInvoiceDTL() {
        return price * invoiceDtlQty;
    }
}
