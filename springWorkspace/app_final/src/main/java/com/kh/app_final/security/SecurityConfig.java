package com.kh.app_final.security;

import com.kh.app_final.jwt.JwtFilter;
import com.kh.app_final.jwt.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;

@Configuration
@RequiredArgsConstructor
public class SecurityConfig  {

    private final JwtUtil jwtUtil;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity) throws Exception {

        //csrf 끄기
        // httpSecurity.csrf( httpSecurityCsrfConfigurer -> httpSecurityCsrfConfigurer.disable() );
        // 아래처럼 쓸 수도 있음 (실행할 내용이 정해져 있을 때)
        httpSecurity.csrf(AbstractHttpConfigurer::disable);

        // 모든 요청 통과시키기
        httpSecurity.authorizeHttpRequests( auth ->
                auth
                        .requestMatchers("/" , "/home").permitAll()
                        .requestMatchers("/api/member/join" , "/api/member/login").permitAll()
                        .requestMatchers("/api/admin/login").permitAll()
                        .requestMatchers("/api/gallery/write").authenticated()
                        .requestMatchers("/api/gallery/**").permitAll()
                        .requestMatchers("/api/admin/**").hasRole("ADMIN")
                        .anyRequest().denyAll()
                
                // admin은 api/admin/** 이 요청이 오면 다 검증을 하기 때문에.. 
                // 컨트롤러를 따로 빼서 한다..... (일반 사용자와 api url 따로 쓰기 위하여)
        );

        // 필터 추가
        httpSecurity.addFilterAt(new JwtFilter(jwtUtil), UsernamePasswordAuthenticationFilter.class);

        // cors 문제 해결하기
        httpSecurity.cors(httpSecurityCorsConfigurer -> httpSecurityCorsConfigurer.configurationSource(request -> {
                    CorsConfiguration conf = new CorsConfiguration();
                    conf.addAllowedOrigin("*");
                    conf.addAllowedMethod("*");
                    conf.addAllowedHeader("*");
                    return conf;
            } ) );

        // return 시큐리티설정객체;
        return httpSecurity.build(); // 빌드 하면 해당 시큐리티 설정 (기본)객체가 만들어진다

    }
}
