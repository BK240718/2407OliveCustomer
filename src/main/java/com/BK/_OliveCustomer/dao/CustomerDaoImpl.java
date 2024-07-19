package com.BK._OliveCustomer.dao;

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

        int totCustomerCnt = 0;
        System.out.println("CustomerDaoImpl Start");
        
        try {
            
            totCustomerCnt = session.selectOne("customerTotal");
            System.out.println("totCustomerCnt = " + totCustomerCnt);
        } catch (Exception e) {
            System.out.println("CustomerDaoImpl totalCustomer Exception = "+ e.getMessage()) ;
        }


        return totCustomerCnt;
    }
}
