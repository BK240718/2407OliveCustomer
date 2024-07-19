package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.CustomerDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomerServiceImpl implements CustomerService{

    private final CustomerDao customerDao;

    @Override
    public int totalCustomer() {

        System.out.println("CustomerServiceImpl Start");
        int totalCustomerCnt = customerDao.totalCustomer();

        System.out.println("totCustomerCnt = " + totalCustomerCnt);

        return totalCustomerCnt;
    }
}
