package com.BK._OliveCustomer.service;

import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ImgUploadServiceImpl implements ImgUploadService {

    private final AmazonS3Client s3Client;

    @Value("${aws.bucket}")
    private String bucket;

    @Override
    public String upload(MultipartFile img) {
        System.out.println("ImgUploadServiceImpl upload Start");

        // 업로드할 파일 이름 변경
        String originFileName = img.getOriginalFilename();
        String fileName = changeFileName(originFileName);

        // S3에 업로드할 파일의 메타데이터 생성
        ObjectMetadata metadata = new ObjectMetadata();
        metadata.setContentType(img.getContentType());
        metadata.setContentLength(img.getSize());

        try {
            // S3에 파일 업로드
            s3Client.putObject(bucket, fileName, img.getInputStream(), metadata);

        } catch (IOException e) {
            e.printStackTrace();
        }

        // 업로드한 파일의 S3 URL 주소 반환
        return s3Client.getUrl(bucket, fileName).toString();
    }

    private String changeFileName(String originFileName) {
        // 업로드할 파일 이름 변경
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");

        return originFileName + "_" + LocalDateTime.now().format(formatter);
    }

    @Override
    public boolean deteleImg(String url) {
        System.out.println("ImgUploadServiceImpl deteleImg Start");

        if (url != null && !url.isEmpty()) {
            // String fileName = url;
            String fileName = extractFileNameFromUrl(url);
            System.out.println("fileName = " + fileName);
            System.out.println("bucket = " + bucket);
            try {
                s3Client.deleteObject(bucket, fileName);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    // List<String>을 JSON 문자열로 변환하는 메소드
    @Override
    public String convertListToJson(List<String> list) {

        System.out.println("ImgUploadServiceImpl convertListToJson Start");

        ObjectMapper mapper = new ObjectMapper();
        String jsonString;

        try {
            // writeValueAsString(Object value)
            // Java 객체를 JSON 문자열로 변환
            jsonString = mapper.writeValueAsString(list);
            System.out.println("jsonString = " + jsonString);
        } catch (Exception e) {
            e.printStackTrace();
            jsonString = "[]";
        }

        return jsonString;
    }

    // 한글명 파일 디코딩용
    private String extractFileNameFromUrl(String url) {

        // URL에서 파일명 추출
        String encodedFileName = url.substring(url.lastIndexOf('/')+1);
        try {
            // 파일명 디코딩
            return URLDecoder.decode(encodedFileName, StandardCharsets.UTF_8.toString());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
