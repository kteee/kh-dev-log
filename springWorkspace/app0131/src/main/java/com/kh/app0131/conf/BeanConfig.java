package com.kh.app0131.conf;

import com.kh.app0131.filter.TokenCheckFilter;
import com.kh.app0131.jwt.JwtUtil;
import jakarta.servlet.Filter;
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

    @Bean
    public FilterRegistrationBean filterRegistrationBean(){
        FilterRegistrationBean<Filter> x = new FilterRegistrationBean<>(new TokenCheckFilter(bCryptPasswordEncoder(), jwtUtil));
        x.addUrlPatterns("/*");
        // x.setOrder(1);
        return x;
    }
}
