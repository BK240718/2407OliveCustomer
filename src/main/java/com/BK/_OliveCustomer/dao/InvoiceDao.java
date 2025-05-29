package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Invoice;

import java.util.List;
import java.util.Map;

public interface InvoiceDao {

    List<Invoice> listInvoiceByCustomerId(int customerId);

    List<Invoice> listInvoiceDTL(int invoiceId);

    int insertInvoice(Map<String, Object> params);

    int insertInvoiceDTL(Map<String, Object> params);
}
