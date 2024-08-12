package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Invoice;

import java.util.List;

public interface InvoiceDao {

    List<Invoice> listInvoiceByCustomerId(int customerId);

}
