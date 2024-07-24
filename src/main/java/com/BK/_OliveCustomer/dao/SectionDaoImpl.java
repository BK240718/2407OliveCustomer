package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.Section;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class SectionDaoImpl implements SectionDao{

    private final SqlSession session;


    @Override
    public List<Section> mainSecName() {

        System.out.println("SectionDaoImpl MainSecName Start");
        List<Section> secNameMain = null;

        try {
            secNameMain = session.selectList("MainSecName");
            System.out.println("secNameMain.size() = " + secNameMain.size());
        } catch (Exception e) {
            System.out.println("SectionDaoImpl MainSecName Exception = " + e.getMessage());
        }

        return secNameMain;
    }
}
