package com.kh.app0123.security;

import com.kh.app0123.jwt.KhJwtFilter;
import com.kh.app0123.jwt.KhJwtUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.server.ServerWebExchange;

import java.util.Collection;
import java.util.Collections;

@Configuration
@RequiredArgsConstructor
@EnableWebSecurity
public class KhSecurityConfig {

    private final AuthenticationConfiguration conf;
    private final KhJwtUtil khJwtUtil;

    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration conf) throws Exception {
        return conf.getAuthenticationManager();
    }

    @Bean
    public SecurityFilterChain m01(HttpSecurity http) throws Exception {

        // http.csrf( (x)-> x.disable() );
        // 스프링 시큐리티는 csrf 공격을 방어하고 있음.
        // 그 방어를 안쓰도로 설정하는 것
        http.csrf( AbstractHttpConfigurer::disable );  // 메서드 참조
        http.formLogin( AbstractHttpConfigurer::disable);
        http.httpBasic(AbstractHttpConfigurer::disable);
        // 세션 안쓰고 토큰 쓸것임
        http.sessionManagement( session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS) );
        http.authorizeHttpRequests(
                auth->auth
                        .requestMatchers("/home", "/join").permitAll()
                        .requestMatchers("/admin/**").hasRole("ADMIN")
                        .anyRequest().authenticated()

        );

        // 내가 만든 로그인 필터로 대체하기
        // http.addFilterAt(갈아끼울필터, 대체당할필터);
        http.addFilterAt(new KhLoginFilter(authenticationManager(conf),khJwtUtil), UsernamePasswordAuthenticationFilter.class);

        // 로그인 필터 앞에 JWT 필터 추가하기
        http.addFilterBefore(new KhJwtFilter(khJwtUtil), KhLoginFilter.class);

        // CORS (스프링 CORS 아니고 스프링시큐리티 CORS 설정
        http.cors(
                corsCustomizer -> corsCustomizer.configurationSource(new CorsConfigurationSource() {
                    @Override
                    public CorsConfiguration getCorsConfiguration(HttpServletRequest request) {
                        CorsConfiguration conf = new CorsConfiguration();
                        conf.setAllowedOrigins(Collections.singletonList("*")); //http://localhost:3000
                        conf.setAllowedMethods(Collections.singletonList("*"));
                        conf.setAllowCredentials(true);
                        conf.setAllowedHeaders(Collections.singletonList("*"));
                        conf.setMaxAge(1000L * 60 * 60);
                        conf.setExposedHeaders(Collections.singletonList("Authorization"));
                        return conf;
                    }
                })
        );

        return http.build();
    }



}
