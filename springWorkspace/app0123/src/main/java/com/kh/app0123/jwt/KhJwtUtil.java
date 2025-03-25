package com.kh.app0123.jwt;

import io.jsonwebtoken.Jwts;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.util.Date;

@Component
public class KhJwtUtil {

    private final SecretKey secretKey;

    public KhJwtUtil(@Value("${kh.jwt.secret}") String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        String algorithm = "HmacSHA256";
        this.secretKey = new SecretKeySpec(bytes, algorithm);
    }

    public String createJwt(String id, String role, long expirationMs){
        return Jwts.builder()
                .claim("id", id)
                .claim("role", role)
                .issuedAt(new Date(System.currentTimeMillis()))
                .expiration(new Date(System.currentTimeMillis()+expirationMs))
                .signWith(secretKey)
                .compact();
    }

    public String getId(String jwt){
        return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(jwt).getPayload().get("id" , String.class);
    }

    public String getRole(String jwt){
        return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(jwt).getPayload().get("role" , String.class);
    }

    public boolean isExpired(String jwt){
        return Jwts.parser().verifyWith(secretKey).build().parseSignedClaims(jwt).getPayload().getExpiration().before(new Date());
    }


}
