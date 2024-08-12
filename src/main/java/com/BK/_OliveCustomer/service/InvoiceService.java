package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dto.Invoice;

import java.util.List;

public interface InvoiceService {

    List<Invoice> listInvoiceByCustomerId(int customerId);

    List<Invoice> listInvoiceDTL(int invoiceId);
}
