package com.kh.app11.opendata;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

@RestController
@RequestMapping("api/weather")
public class WeatherApi {

    @GetMapping
    public void m01() throws Exception {
        // 요청 보낼 주소 설정
        String serviceKey = "y1puZIZWvCdmIXpd5tvh%2FxeMlC9I%2FFNeFYxC8Gmu0y9kWJyccsU3DNVjXq9MxZli%2FgJaB9D80g3QdxikFJ8lHw%3D%3D";
        String courseId = "179";

        String str = "https://apis.data.go.kr/1360000/TourStnInfoService1/getTourStnVilageFcst1";
        str += "?ServiceKey=" + serviceKey;
        str += "&pageNo=1";
        str += "&numOfRows=5";
        str += "&dataType=JSON";
        str += "&CURRENT_DATE=2025011009";
        str += "&HOUR=24";
        str += "&COURSE_ID=" + URLEncoder.encode(courseId, "UTF-8");

        // 연결하기
        URL url = new URL(str);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        // 메서드 설정, 헤더 설정
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        // 응답코드 출력해보기
        System.out.println("Response code: " + conn.getResponseCode());
        // 통로를 통해서 데이터 읽어오기
        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        // 자원반납, 연결끊기
        rd.close();
        conn.disconnect();
        // 결과 확인
        System.out.println(sb.toString());
    }
}
