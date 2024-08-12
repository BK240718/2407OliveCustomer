package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.InvoiceDao;
import com.BK._OliveCustomer.dto.Invoice;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class InvoiceServiceImpl implements InvoiceService {

    private final InvoiceDao invoiceDao;

    @Override
    public List<Invoice> listInvoiceByCustomerId(int customerId) {

        System.out.println("InvoiceServiceImpl listInvoiceByCustomerId Start");

        List<Invoice> listInvoiceByCustomerId = invoiceDao.listInvoiceByCustomerId(customerId);
        System.out.println("listInvoiceByCustomerId.size() = " + listInvoiceByCustomerId.size());

        return listInvoiceByCustomerId;
    }
}
