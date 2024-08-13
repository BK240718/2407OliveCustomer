package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dto.Invoice;

import java.util.List;
import java.util.Map;

public interface InvoiceService {

    List<Invoice> listInvoiceByCustomerId(int customerId);

    Map<String, Object> listInvoiceDTL(int invoiceId);
}
