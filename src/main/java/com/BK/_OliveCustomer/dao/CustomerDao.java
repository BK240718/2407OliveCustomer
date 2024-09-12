package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Customer;

public interface CustomerDao {

    int totalCustomer();

    Customer oneCustomerForSignIn(Customer customerP);

    Customer oneCustomerForInvoice(int customerId);
}
