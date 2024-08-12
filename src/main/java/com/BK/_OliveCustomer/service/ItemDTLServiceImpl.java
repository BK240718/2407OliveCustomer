package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.ItemDTLDao;
import com.BK._OliveCustomer.dto.ItemDTL;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ItemDTLServiceImpl implements ItemDTLService {

    private final ItemDTLDao itemDTLDao;


    @Override
    public List<ItemDTL> listItemDTLBySection(ItemDTL itemDTL) {

        System.out.println("ItemDTLServiceImpl listItemDTLBySection Start");

        List<ItemDTL> listItemDTLBySection = itemDTLDao.listItemDTLBySection(itemDTL);
        System.out.println("ItemDTLServiceImpl listItemDTLBySection.size() = " + listItemDTLBySection.size());

        return listItemDTLBySection;
    }


    @Override
    public int countItemDTLBySection(int sectionId) {

        System.out.println("ItemDTLServiceImpl countItemDTLBySection Start");
        int countItemDTLBySection = itemDTLDao.countItemDTLBySection(sectionId);
        System.out.println("ItemDTLServiceImpl countItemDTLBySection = " + countItemDTLBySection);

        return countItemDTLBySection;
    }


    @Override
    public ItemDTL oneItemDTL(int itemDTLId) {

        System.out.println("ItemDTLServiceImpl oneItemDTL Start");
        ItemDTL itemDTL = itemDTLDao.oneItemDTL(itemDTLId);

        return itemDTL;
    }


    @Override
    public List<ItemDTL> listItemDTLByItemId(ItemDTL itemDTL) {

        System.out.println("ItemDTLServiceImpl listItemDTLByItemId Start");
        List<ItemDTL> listItemDTLByItemId = itemDTLDao.listItemDTLByItemId(itemDTL);

        return listItemDTLByItemId;
    }


    // JSON 문자열을 List<String>으로 변환하는 메소드
    @Override
    public List<String> convertJsonToList(String jsonString) {

        System.out.println("ItemDTLServiceImpl convertJsonToList Start");

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
