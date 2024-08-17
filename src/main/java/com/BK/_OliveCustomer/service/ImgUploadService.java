package com.BK._OliveCustomer.service;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface ImgUploadService {

    String upload(MultipartFile img);

    boolean deteleImg(String url);

    String convertListToJson(List<String> list);
}
