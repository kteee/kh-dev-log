package com.kh.notionapp.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@RestController
public class HelloController {

    @GetMapping("test")
    public String m01() throws Exception {
        System.out.println("얍얍");

        // 노션 API 호출에 필요한 데이터 준비
        String databaseId = "1545910c639f80b2ab9ac64b8ff99d51";
        String secretKey = "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";
        String notionVersion = "2022-06-28";

        // HTTP 요청 보내고 응답받기
        // 1. URL 설정
        // 2. method 설정
        // 3. data 설정

        // URL 설정
        URL url = new URL("https://api.notion.com/v1/databases/" + databaseId + "/query");
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();

        // method 설정
        connection.setRequestMethod("POST");

        // data 설정 (header 설정)
        connection.setRequestProperty("Authorization", secretKey);
        connection.setRequestProperty("Notion-Version", notionVersion);
        connection.setRequestProperty("Content-Type", "application/json");

        // 응답코드(HTTP status code) 얻기 
        int responseCode = connection.getResponseCode();
        System.out.println("responseCode = " + responseCode);

        // 데이터 읽기
        StringBuilder response = new StringBuilder();
        InputStream is = connection.getInputStream();
        InputStreamReader isr = new InputStreamReader(is);
        BufferedReader reader = new BufferedReader(isr);
        String str;
        while ((str = reader.readLine()) != null) {
            response.append(str.trim());
        }

        System.out.println("response = " + response);

        return response.toString();
    }
}
