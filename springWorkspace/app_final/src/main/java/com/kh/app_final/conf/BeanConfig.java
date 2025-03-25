package com.kh.app_final.conf;

import com.kh.app_final.jwt.JwtFilter;
import com.kh.app_final.jwt.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@RequiredArgsConstructor
public class BeanConfig {

    private final JwtUtil jwtUtil;

    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder(){
        return new BCryptPasswordEncoder();
    }

    // 중복 필터 삭제
//    @Bean
//    public FilterRegistrationBean filterRegistrationBean(){
//        FilterRegistrationBean x = new FilterRegistrationBean<>(new JwtFilter(jwtUtil));
//        x.addUrlPatterns("*");
//        x.setOrder(1);
//        return x;
//    }

}
