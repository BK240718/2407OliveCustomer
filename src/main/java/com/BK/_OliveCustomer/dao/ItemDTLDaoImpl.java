package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.ItemDTL;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ItemDTLDaoImpl implements ItemDTLDao {

    private final SqlSession session;

    @Override
    public List<ItemDTL> listItemDTLBySection(ItemDTL itemDTL) {

        System.out.println("ItemDTLDaoImpl listItemDTLBySection Start");
        List<ItemDTL> listItemDTLBySection = null;

        try {
            listItemDTLBySection = session.selectList("listItemDTLBySection", itemDTL);
            System.out.println("ItemDTLDaoImpl listItemDTLBySection.size() = " + listItemDTLBySection.size());
        } catch (Exception e) {
            System.out.println("e.getMessage() = " + e.getMessage());
        }

        return listItemDTLBySection;
    }

    @Override
    public int countItemDTLBySection(int sectionId) {

        System.out.println("ItemDTLDaoImpl CountItemDTLBySection Start");
        int countItemDTLBySection = 0;

        try {
            countItemDTLBySection = session.selectOne("countItemDTLBySection", sectionId);
            System.out.println("ItemDTLDaoImpl countItemDTLBySection = " + countItemDTLBySection);
        } catch (Exception e) {
            System.out.println("ItemDTLDaoImpl countItemDTLBySection e.getMessage() = " + e.getMessage());
        }

        return countItemDTLBySection;
    }
}
