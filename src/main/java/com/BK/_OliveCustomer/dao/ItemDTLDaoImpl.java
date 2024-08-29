package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.ItemDTL;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Slf4j
@Repository
@RequiredArgsConstructor
public class ItemDTLDaoImpl implements ItemDTLDao {

    private final SqlSession session;

    @Override
    public List<ItemDTL> listItemDTLBySection(ItemDTL itemDTL) {

        log.info("listItemDTLBySection Start");
        List<ItemDTL> listItemDTLBySection = null;

        try {
            listItemDTLBySection = session.selectList("listItemDTLBySection", itemDTL);
            log.info("ItemDTLDaoImpl listItemDTLBySection.size() = {}", listItemDTLBySection.size());
        } catch (Exception e) {
            log.info("e.getMessage() = {}", e.getMessage());
        }

        return listItemDTLBySection;
    }


    @Override
    public int countItemDTLBySection(int sectionId) {

        log.info("CountItemDTLBySection Start");
        int countItemDTLBySection = 0;

        try {
            countItemDTLBySection = session.selectOne("countItemDTLBySection", sectionId);
            log.info("ItemDTLDaoImpl countItemDTLBySection = {}", countItemDTLBySection);
        } catch (Exception e) {
            log.info("ItemDTLDaoImpl countItemDTLBySection e.getMessage() = {}", e.getMessage());
        }

        return countItemDTLBySection;
    }


    @Override
    public ItemDTL oneItemDTL(int itemDtlId) {

        log.info("oneItemDTL Start");
        ItemDTL itemDTL = new ItemDTL();

        try {
            itemDTL = session.selectOne("oneItemDTL", itemDtlId);
        } catch (Exception e) {
            log.info("e.getMessage() = {}", e.getMessage());
        }
        return itemDTL;
    }


    @Override
    public List<ItemDTL> listItemDTLByItemId(ItemDTL itemDTL) {

        log.info("listItemDTLByItemId Start");
        List<ItemDTL> listItemDTLByItemId = null;

        try {
            listItemDTLByItemId = session.selectList("listItemDTLByItemId", itemDTL);
            log.info("listItemDTLByItemId.size() = {}", listItemDTLByItemId.size());
        } catch (Exception e) {
            log.info("e.getMessage() = {}", e.getMessage());
        }

        return listItemDTLByItemId;
    }
}
