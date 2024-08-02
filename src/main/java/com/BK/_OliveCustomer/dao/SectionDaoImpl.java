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
    public List<Section> listSection() {

        System.out.println("SectionDaoImpl listSection Start");
        List<Section> listSection = null;

        try {
            listSection = session.selectList("listSection");
            System.out.println("listSection.size() = " + listSection.size());
        } catch (Exception e) {
            System.out.println("SectionDaoImpl listSection Exception = " + e.getMessage());
        }

        return listSection;
    }
}
