package com.BK._OliveCustomer.dao;

import com.BK._OliveCustomer.dto.ItemDTL;

import java.util.List;

public interface ItemDTLDao {

    List<ItemDTL> listItemDTLBySection(ItemDTL itemDTL);

    int countItemDTLBySection(int sectionId);
}
