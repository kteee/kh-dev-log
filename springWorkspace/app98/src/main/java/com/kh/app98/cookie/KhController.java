package com.kh.app98.cookie;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("chicchoc")
public class KhController {

    @GetMapping
    @ResponseBody
    public String m01(HttpServletResponse resp){

        Cookie c = new Cookie("ccccc", "오리zzz온");
        c.setMaxAge(60*60*24);
        c.setPath("/aaa");

        resp.addCookie(c);

        return "<h1>kukikikikiki</h1>";
    }

}
