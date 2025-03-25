package com.kh.app0131.conf;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // csrf : 공격에 대해서 방어하는 거,,, 기본적으로 설정되어있어서 꺼줘야 한다,,
        http.csrf( auth -> auth.disable() );
        http.authorizeHttpRequests(
                x -> x.anyRequest().permitAll()
        );

        http.cors(
                corsCustomizer -> corsCustomizer.configurationSource(new CorsConfigurationSource() {
                    @Override
                    public CorsConfiguration getCorsConfiguration(HttpServletRequest request) {

                        CorsConfiguration conf = new CorsConfiguration();
                        conf.addAllowedOrigin("http://localhost:3000");
                        conf.addAllowedHeader("*");
                        conf.addAllowedMethod("*");

                        return conf;
                    }
                })
        );

        return http.build();
    }

}
