package com.BK._OliveCustomer.service;

import com.BK._OliveCustomer.dao.SectionDao;
import com.BK._OliveCustomer.dto.Section;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SectionServiceImpl implements SectionService {

    private final SectionDao sectionDao;

    @Override
    public List<Section> listSection() {

        System.out.println("SectionServiceImpl listSection Start");
        
        List<Section> listSection = null;
        listSection = sectionDao.listSection();
        System.out.println("mainSecName.size() = " + listSection.size());
        
        return listSection;
    }
}
