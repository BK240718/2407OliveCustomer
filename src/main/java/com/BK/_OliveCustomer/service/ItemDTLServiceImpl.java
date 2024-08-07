package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.ItemDTLDao;
import com.BK._OliveCustomer.dto.ItemDTL;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ItemDTLServiceImpl implements ItemDTLService {

    private final ItemDTLDao itemDTLDao;

    @Override
    public List<ItemDTL> listItemDTLBySection(ItemDTL itemDTL) {

        System.out.println("ItemDTLServiceImpl listItemDTLBySection Start");

        List<ItemDTL> listItemDTLBySection = null;

        listItemDTLBySection = itemDTLDao.listItemDTLBySection(itemDTL);
        System.out.println("ItemDTLServiceImpl listItemDTLBySection.size() = " + listItemDTLBySection.size());

        return listItemDTLBySection;
    }

    @Override
    public int countItemDTLBySection(int sectionId) {

        System.out.println("ItemDTLServiceImpl listItemDTLBySection Start");
        int countItemDTLBySection = itemDTLDao.countItemDTLBySection(sectionId);
        System.out.println("ItemDTLServiceImpl countItemDTLBySection = " + countItemDTLBySection);

        return countItemDTLBySection;
    }
}
