package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Customer;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class CustomerDaoImpl implements CustomerDao {

    // MyBatis DB 연동
    private final SqlSession session;

    @Override
    public int totalCustomer() {

        System.out.println("CustomerDaoImpl totalCustomer Start");
        int totalCustomerCnt = 0;

        try {

            totalCustomerCnt = session.selectOne("customerTotal");
            System.out.println("totCustomerCnt = " + totalCustomerCnt);
        } catch (Exception e) {
            System.out.println("CustomerDaoImpl totalCustomer Exception = "+ e.getMessage()) ;
        }


        return totalCustomerCnt;
    }

    @Override
    public Customer oneCustomerForSignIn(Customer customerP) {

        System.out.println("CustomerDaoImpl oneCustomerForSignIn Start");
        Customer customer = new Customer();

        try {
            customer = session.selectOne("oneCustomerForSignIn", customerP);
        } catch (Exception e) {
            System.out.println("e.getMessage() = " + e.getMessage());
        }

        return customer;
    }
}
