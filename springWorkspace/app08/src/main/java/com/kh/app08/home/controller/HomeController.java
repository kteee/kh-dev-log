package com.kh.app08.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("home")
    public String home() {
        return "home"; // return 명시 안해도 동작함 (home.jsp로 포워딩)
    }
}
