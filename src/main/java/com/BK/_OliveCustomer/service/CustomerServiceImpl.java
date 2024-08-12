package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.CustomerDao;
import com.BK._OliveCustomer.dto.Customer;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomerServiceImpl implements CustomerService{

    private final CustomerDao customerDao;

    @Override
    public int totalCustomer() {

        System.out.println("CustomerServiceImpl totalCustomer Start");
        int totalCustomerCnt = customerDao.totalCustomer();

        System.out.println("totCustomerCnt = " + totalCustomerCnt);

        return totalCustomerCnt;
    }

    @Override
    public Customer oneCustomerForSignIn(Customer customerP) {

        System.out.println("CustomerServiceImpl oneCustomerForSignIn Start");

        Customer customer = new Customer();
        customer = customerDao.oneCustomerForSignIn(customerP);

        return customer;
    }
}
