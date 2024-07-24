package com.BK._OliveCustomer.controller;

import com.BK._OliveCustomer.dto.Section;
import com.BK._OliveCustomer.service.SectionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class MainController {

    private final SectionService sectionService;

    @RequestMapping(value = "/")
    public String home() {
        return "list";
    }


    @ResponseBody
    @RequestMapping(value = "mainSecName", method = RequestMethod.POST)
    public Map<String, Object> mainSecName() {

        System.out.println("MainController MainSecName Start");

        Map<String, Object> response = new HashMap<String, Object>();
        List<Section> mainSecName =sectionService.mainSecName();

        response.put("status", "200 OK");
        response.put("data", Map.of("mainSecName", mainSecName));

        return response;

    }


}
