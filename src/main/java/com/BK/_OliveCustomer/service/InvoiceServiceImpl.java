package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.InvoiceDao;
import com.BK._OliveCustomer.dto.Invoice;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class InvoiceServiceImpl implements InvoiceService {

    private final InvoiceDao invoiceDao;

    @Override
    public List<Invoice> listInvoiceByCustomerId(int customerId) {

        System.out.println("InvoiceServiceImpl listInvoiceByCustomerId Start");

        List<Invoice> listInvoiceByCustomerId = invoiceDao.listInvoiceByCustomerId(customerId);
        System.out.println("listInvoiceByCustomerId.size() = " + listInvoiceByCustomerId.size());
        System.out.println("InvoiceServiceImpl listInvoiceByCustomerId.get(0).getItemDtlId() = " + listInvoiceByCustomerId.get(0).getItemDtlId());

        return listInvoiceByCustomerId;
    }

    @Override
    public Map<String, Object> listInvoiceDTL(int invoiceId) {

        System.out.println("InvoiceServiceImpl listInvoiceDTL Start");

        // 1. listInvoiceDTL: 데이터 가져오기
        List<Invoice> listInvoiceDTL = invoiceDao.listInvoiceDTL(invoiceId);
        System.out.println("InvoiceServiceImpl listInvoiceDTL.size() = " + listInvoiceDTL.size());

        // 2. subTotal: 각 InvoiceDTL total 값 계산
        int subTotal = 0;
        for (Invoice invoice : listInvoiceDTL) {
            invoice.calculateTotalPriceForInvoiceDTL();
            subTotal += invoice.getTotalPriceForInvoiceDTL();   // 총합 계산
        }

        // 3. shippingCost: 배송비 계산
        int shippingCost = calculateShippingCost(subTotal);

        // 4. grandTotal: 최종 결제 금액 계산
        int grandTotal = subTotal + shippingCost;

        // 5. 결과를 맵에 담아 반환
        Map<String, Object > result = new HashMap<>();
        result.put("listInvoiceDTL", listInvoiceDTL);
        result.put("subTotal", subTotal);
        result.put("shippingCost", shippingCost);
        result.put("grandTotal", grandTotal);

        return result;
    }

    // 배송비 계산
    public int calculateShippingCost(int subTotal) {

        if (subTotal >= 30000) {
            return 0;
        } else {
            return 2500;
        }
    }
}
