package com.BK._OliveCustomer.dto;

import lombok.Data;

@Data
public class InvoiceDTL {
    private int invoiceDtlId;
    private int itemDtlId;
    private int invoiceId;
    private int invoiceDtlQty;
    private int price;
    private int status;
    private int trackNum;
    private String delDate;


}
