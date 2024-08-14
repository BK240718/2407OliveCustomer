package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Invoice;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class InvoiceDaoImpl implements InvoiceDao {

    private final SqlSession session;

    @Override
    public List<Invoice> listInvoiceByCustomerId(int customerId) {

        System.out.println("InvoiceDaoImpl listInvoiceByCustomerId Start");
        
        List<Invoice> listInvoiceByCustomerId = null;
        
        try {
            listInvoiceByCustomerId = session.selectList("listInvoiceByCustomerId", customerId);
            System.out.println("listInvoiceByCustomerId.size() = " + listInvoiceByCustomerId.size());
            System.out.println("InvoiceDaoImpl listInvoiceByCustomerId.get(0).getItemDtlId() = " + listInvoiceByCustomerId.get(0).getItemDtlId());
        } catch (Exception e) {
            System.out.println("e.getMessage() = " + e.getMessage());
        }

        return listInvoiceByCustomerId;
    }

    @Override
    public List<Invoice> listInvoiceDTL(int invoiceId) {

        System.out.println("InvoiceDaoImpl listInvoiceDTL Start");

        List<Invoice> listInvoiceDTL = null;
        
        try {
            listInvoiceDTL = session.selectList("listInvoiceDTL", invoiceId);
            System.out.println("listInvoiceDTL.size() = " + listInvoiceDTL.size());
        } catch (Exception e) {
            System.out.println("e.getMessage() = " + e.getMessage());
        }
        return listInvoiceDTL;
    }
}
