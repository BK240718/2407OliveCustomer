package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.CustomerDao;
import com.BK._OliveCustomer.dto.Customer;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class CustomerServiceImpl implements CustomerService{

    private final CustomerDao customerDao;

    @Override
    public int totalCustomer() {

        log.info("CustomerServiceImpl totalCustomer Start");
        int totalCustomerCnt = customerDao.totalCustomer();

        log.info("totCustomerCnt = {}", totalCustomerCnt);

        return totalCustomerCnt;
    }


    @Override
    public Customer oneCustomerForSignIn(Customer customerP) {

        log.info("CustomerServiceImpl oneCustomerForSignIn Start");

        Customer customer = new Customer();
        customer = customerDao.oneCustomerForSignIn(customerP);

        return customer;
    }


    @Override
    public Customer oneCustomerForInvoice(int customerId) {

        log.info("oneCustomerForInvoice Start");

        Customer customer = new Customer();
        customer = customerDao.oneCustomerForInvoice(customerId);

        return customer;
    }
}
