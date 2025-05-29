package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.ItemDTLDao;
import com.BK._OliveCustomer.dto.ItemDTL;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class ItemDTLServiceImpl implements ItemDTLService {

    private final ItemDTLDao itemDTLDao;


    @Override
    public List<ItemDTL> listItemDTLBySection(ItemDTL itemDTL) {

        log.info("listItemDTLBySection Start");

        List<ItemDTL> listItemDTLBySection = itemDTLDao.listItemDTLBySection(itemDTL);
        log.info("listItemDTLBySection.size() = {}", listItemDTLBySection.size());

        return listItemDTLBySection;
    }

    @Override
    public List<ItemDTL> allItemDTL() {

        log.info("allItemDTL Start");

        List<ItemDTL> allItemDTL = itemDTLDao.allItemDTL();
        log.info("allItemDTL.size() = {}", allItemDTL.size());

        return allItemDTL;
    }


    @Override
    public int countItemDTLBySection(int sectionId) {

        log.info("countItemDTLBySection Start");
        int countItemDTLBySection = itemDTLDao.countItemDTLBySection(sectionId);
        log.info("countItemDTLBySection = {}", countItemDTLBySection);

        return countItemDTLBySection;
    }


    @Override
    public ItemDTL oneItemDTL(int itemDTLId) {

        log.info("oneItemDTL Start");
        ItemDTL itemDTL = itemDTLDao.oneItemDTL(itemDTLId);

        return itemDTL;
    }


    @Override
    public List<ItemDTL> listItemDTLByItemId(ItemDTL itemDTL) {

        log.info("listItemDTLByItemId Start");
        List<ItemDTL> listItemDTLByItemId = itemDTLDao.listItemDTLByItemId(itemDTL);

        return listItemDTLByItemId;
    }


    // JSON 문자열을 List<String>으로 변환하는 메소드
    @Override
    public List<String> convertJsonToList(String jsonString) {

        log.info("convertJsonToList Start");

        List<String> list = new ArrayList<>();
        // ObjectMapper 클래스:    JSON 문자열 <-> Java 객체 변환
        ObjectMapper mapper = new ObjectMapper();

        try {
            // readValue(String content, TypeReference<T> valueTypeRef):
            // JSON 문자열 -> valueTypeRef(구체적인 타입 ex: List<String>으로)
            list = mapper.readValue(jsonString, new TypeReference<List<String>>() {});
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
