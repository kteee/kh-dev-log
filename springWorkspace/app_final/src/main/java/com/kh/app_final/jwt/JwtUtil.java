package com.kh.app_final.jwt;

import io.jsonwebtoken.Jwts;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.util.Date;

@Component
public class JwtUtil {

    private SecretKey secretKey;

    // 생성자 (시크릿키 준비)
    public JwtUtil(@Value("${kh.jwt.secret}") String str) {
        // this.secretKey = new SecretKeySpec(비밀값의 바이트배열, 알고리즘);
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        this.secretKey = new SecretKeySpec(bytes, "HmacSHA256");
    }

    // 토큰 생성
    public String createJwtToken(Long no, String id, String nick, String role){

        return Jwts.builder()
                .claim("no", no)
                .claim("id", id)
                .claim("nick", nick)
                .claim("role", role)
                .issuedAt(new Date(System.currentTimeMillis()))
                .expiration(new Date(System.currentTimeMillis() + (1000*60*15)))
                .signWith(secretKey)
                .compact()
                ;
    }

    // 토큰 검증해서 만료여부 체크
    public boolean isExpired(String token) {
        return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().getExpiration().before(new Date());
    }

    // 토큰 검증해서 페이로드의 데이터 꺼내기 : no, id
    public Long getNo(String token) {
        Long result = Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().get("no", Long.class);
        return result;
    }

    public String getId(String token) {
        String result = Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().get("id", String.class);
        return result;
    }

    // 토큰 검증해서 페이로드의 데이터 꺼내기 : role
    public String getRole(String token){
        String result = Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().get("role", String.class);
        return result;
    }

}
