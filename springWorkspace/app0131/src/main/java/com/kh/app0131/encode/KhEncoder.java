package com.kh.app0131.encode;

import org.springframework.stereotype.Component;

@Component
public class KhEncoder {

    // 암호화 알고리즘
    public String encode(String rawData){
        // 지금은 그냥 abc를 더했지만,,, 암튼,, 엄청 강하고,, 복잡한 알고리즘이라고 치자,,
        String encryptData = rawData + "abc";
        return encryptData;
    }

    // 암호 검증 메서드
    public boolean match(String rawData, String encryptData){
        // 일치 여부 검증
        boolean result = encryptData.equals(rawData + "abc");
        return result;
    }

}
