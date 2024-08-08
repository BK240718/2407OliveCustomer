package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dto.ItemDTL;

import java.util.List;

public interface ItemDTLService {

    List<ItemDTL> listItemDTLBySection(ItemDTL itemDTL);

    int countItemDTLBySection(int sectionId);

    ItemDTL oneItemDTL(int itemDTLId);

    List<ItemDTL> listItemDTLByItemId(ItemDTL itemDTL);
}
