package com.kh.app09.config;

import com.kh.app09.filter.KhFilter;
import com.kh.app09.home.controller.HomeController;
import com.kh.app09.home.controller.HomeService;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// 스프링아.. 이거 보고 설정해야 됨..
@Configuration
public class AppConfig {

    // 빈 등록하기
    @Bean
    public HomeService homeService() {  // 메서드 이름은 보통 리턴해주는 클래스명과 맞춤
        // return 빈으로등록할객체;
        return new HomeService();
    }

    @Bean
    public FilterRegistrationBean m02() {
        FilterRegistrationBean x = new FilterRegistrationBean(new KhFilter()) ;
        x.addUrlPatterns("/*");
        x.setOrder(1);
        return x;
    }
}
