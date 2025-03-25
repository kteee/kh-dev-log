package com.kh.app0131.jwt;

import io.jsonwebtoken.Jwts;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.Key;
import java.util.Date;

@Component
public class JwtUtil {

    private final SecretKey secretKey;

    public JwtUtil(@Value("${kh.str}") String str){
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        this.secretKey = new SecretKeySpec(bytes, "HmacSHA256");
    }

    // 토큰 생성
    public String createToken(Long no, String nick, long expTime){
        return Jwts.builder()
                .claim("no", no)
                .claim("nick", nick)
                .issuedAt(new Date(System.currentTimeMillis()))
                .expiration(new Date(System.currentTimeMillis()+expTime))
                .signWith(secretKey)
                .compact()
                ;
    }

    // 토큰 검증 => 안해도됨.. 나머지 메서드에 포함 되어있음..
//    public void checkToken(){
//
//    }

    // 토큰 만료 검증
    public Boolean isExprire(String token) {
        return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().getExpiration().before(new Date());
    }

    // 토큰에서 값 꺼내기 (넘버)
    public Long getNo(String token) {
        return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().get("no", Long.class);
    }

    // 토큰에서 값 거내기 (닉네임)
    public String getNick(String token) {
        return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(token).getPayload().get("nick", String.class);
    }

}
