package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.CustomerDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomerServiceImpl implements CustomerService{

    private final CustomerDao cd;

    @Override
    public int totalCustomer() {
        System.out.println("CustomerServiceImpl Start");
        int totCustomerCnt = cd.totalCustomer();
        System.out.println("totCustomerCnt = " + totCustomerCnt);
        return totCustomerCnt;
    }
}
