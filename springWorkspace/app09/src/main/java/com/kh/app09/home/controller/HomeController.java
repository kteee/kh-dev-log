package com.kh.app09.home.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("home")
@Slf4j
@RequiredArgsConstructor
public class HomeController {

//  private Logger log = LoggerFactory.getLogger(HomeController.class);

    private final HomeService hs;

    @GetMapping
    @ResponseBody
    public String home() {
        // long time = System.currentTimeMillis();
        // System.out.println( time + " HomeController.home called~~");
        log.trace("트레이스 : 홈페이지 보기 요청 발생"); // lv1
        log.debug("디버그 : 홈페이지 보기 요청 발생"); // lv2
        log.info("인포 : 홈페이지 보기 요청 발생"); // lv3 (만약 로거 객체가 lv3이면 lv3,4,5 출력)
        log.warn("워닝 : 홈페이지 보기 요청 발생");  // lv4
        log.error("에러 : 홈페이지 보기 요청 발생");  // lv5

        hs.home();

        return "<h1>home</h1>";
    }
}
