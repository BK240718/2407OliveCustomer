package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dto.Customer;

public interface CustomerService {

    int totalCustomer();

    Customer oneCustomerForSignIn(Customer customerP);
}
