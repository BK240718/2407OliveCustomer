package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Invoice;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
@Slf4j
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

    @Override
    public int insertInvoice(Map<String, Object> params) {

        log.info("InvoiceDaoImpl insertInvoice Start");
        int invoiceId = 0;

        try {
            // CALL 프로시저 실행
            session.selectOne("insertInvoice", params);
            // OUT 파라미터에서 InvoiceId 값을 가져옴
            // BigDecimal: NUMBER 타입은 Java에서는 BigDecimal로 반환되며,
            // 이를 Integer로 직접 캐스팅하면 오류가 발생
            BigDecimal bdInvoiceId = (BigDecimal) params.get("P_INVOICEID");
            invoiceId = bdInvoiceId.intValue();
            log.info("InvoiceDaoImpl insertInvoice invoiceId = {}", invoiceId);
        } catch (Exception e) {
            log.info("InvoiceDaoImpl insertInvoice e.getMessage() = {}", e.getMessage());
        }

        return invoiceId;
    }

    @Override
    public int insertInvoiceDTL(Map<String, Object> params) {

        log.info("insertInvoiceDTL Start");
        int insertResult = 0;

        try {
            insertResult = session.insert("insertInvoiceDTL", params);
            log.info("InvoiceDaoImpl insertInvoiceDTL insertResult = {}", insertResult);
        } catch (Exception e) {
            log.info("InvoiceDaoImpl insertInvoiceDTL e.getMessage() = {}", e.getMessage());
        }


        return insertResult;
    }
}
