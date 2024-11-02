package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dto.ApproveResponse;
import com.BK._OliveCustomer.dto.Invoice;
import com.BK._OliveCustomer.dto.ReadyResponse;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Map;

public interface InvoiceService {

    List<Invoice> listInvoiceByCustomerId(int customerId);

    Map<String, Object> listInvoiceDTL(int invoiceId);

    ReadyResponse prepareKakaoPayRequest(Invoice request);

    ApproveResponse payApprove(String tid, String pgToken, int tatalPrice, HttpServletRequest request);

    void insertInvoice(Invoice invoice);
}
