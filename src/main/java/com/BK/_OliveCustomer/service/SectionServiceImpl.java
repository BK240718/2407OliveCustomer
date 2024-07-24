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
    public List<Section> mainSecName() {

        System.out.println("SectionServiceImpl mainSecName Start");
        
        List<Section> mainSecName = null;
        mainSecName = sectionDao.mainSecName();
        System.out.println("mainSecName.size() = " + mainSecName.size());
        
        return mainSecName;
    }
}
