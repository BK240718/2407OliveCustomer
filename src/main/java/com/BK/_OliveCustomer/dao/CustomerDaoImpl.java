package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Customer;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
@RequiredArgsConstructor
public class CustomerDaoImpl implements CustomerDao {

    // MyBatis DB 연동
    private final SqlSession session;

    @Override
    public int totalCustomer() {

        log.info("CustomerDaoImpl totalCustomer Start");
        int totalCustomerCnt = 0;

        try {

            totalCustomerCnt = session.selectOne("customerTotal");
            log.info("totCustomerCnt = {}", totalCustomerCnt);
        } catch (Exception e) {
            log.info("CustomerDaoImpl totalCustomer Exception = {}", e.getMessage());
        }

        return totalCustomerCnt;
    }

    @Override
    public Customer oneCustomerForSignIn(Customer customerP) {

        log.info("CustomerDaoImpl oneCustomerForSignIn Start");
        Customer customer = new Customer();

        try {
            customer = session.selectOne("oneCustomerForSignIn", customerP);
        } catch (Exception e) {
            log.info("e.getMessage() = {}", e.getMessage());
        }

        return customer;
    }


    @Override
    public Customer oneCustomerForInvoice(int customerId) {

        log.info("oneCustomerForInvoice Start");
        Customer customer = new Customer();

        try {
            customer = session.selectOne("oneCustomerForInvoice", customerId);
        } catch (Exception e) {
            log.info("e.getMessage() = {}", e.getMessage());
        }

        return customer;
    }
}
