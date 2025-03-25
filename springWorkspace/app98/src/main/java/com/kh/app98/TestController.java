package com.kh.app98;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/")
    public String m01(HttpServletRequest req){
        // String v = (String) req.getAttribute("food");
        // System.out.println("v = " + v);
        return "<h1>zzzzzzzzzzzz</h1>";
    }
}
