package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.Customer;
import com.BK._OliveCustomer.dto.Invoice;
import com.BK._OliveCustomer.service.CustomerService;
import com.BK._OliveCustomer.service.InvoiceService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class InvoiceController {

    private final InvoiceService invoiceService;

    @RequestMapping(value = "listInvoice")
    public String listInvoice(HttpSession session,
                              Model model) {

        System.out.println("InvoiceController listInvoice Start");

        Integer customerIdObj = (Integer) session.getAttribute("customerId");
        if (customerIdObj == null) {
            return "redirect:/";
        }

        int customerId = customerIdObj;
        System.out.println("InvoiceController customerId = " + customerId);

        List<Invoice> listInvoiceByCustomerId = invoiceService.listInvoiceByCustomerId(customerId);
        System.out.println("InvoiceController listInvoiceByCustomerId.get(0).getItemDtlId() = " + listInvoiceByCustomerId.get(0).getItemDtlId());

        model.addAttribute("listInvoiceByCustomerId", listInvoiceByCustomerId);

        return "invoice/listInvoice";
    }

    @RequestMapping(value = "listInvoiceDTL")
    public String  listInvoiceDTL(@RequestParam("invoiceId") int invoiceId,
                                  Model model) {

        System.out.println("InvoiceController listInvoiceDTL Start");

        Map<String, Object> result = invoiceService.listInvoiceDTL(invoiceId);
        List<Invoice> listInvoiceDTL = (List<Invoice>) result.get("listInvoiceDTL");
        int subTotal = (int) result.get("subTotal");
        int shippingCost = (int) result.get("shippingCost");
        int grandTotal = (int) result.get("grandTotal");

        System.out.println("InvoiceController listInvoiceDTL.size() = " + listInvoiceDTL.size());

        model.addAttribute("listInvoiceDTL", listInvoiceDTL);
        model.addAttribute("subTotal", subTotal);
        model.addAttribute("shippingCost", shippingCost);
        model.addAttribute("grandTotal", grandTotal);

        return "invoice/listInvoiceDTL";
    }

}
