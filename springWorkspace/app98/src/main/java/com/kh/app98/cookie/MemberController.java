package com.kh.app98.cookie;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberController {

    @GetMapping("login")
    public String login(HttpServletRequest req, @CookieValue(name="storedId") String str, Model model){
        //cookie check
//        Cookie[] cookies = req.getCookies();
//        for (Cookie cookie : cookies) {
//            System.out.println(cookie.getName());
//            System.out.println(cookie.getValue());
//        }

        model.addAttribute("str", str);

        return "member/login.html";
    }

    @PostMapping("login")
    public String login(String id, String pwd, HttpServletResponse resp) {
        // login check
        if ("user01".equals(id) && "1234".equals(pwd)){
            Cookie c = new Cookie("storedId", id);
            c.setPath("/member/login");
            c.setMaxAge(60*60*24*7);
            resp.addCookie(c);
            return "redirect:/";
        }
        else {
            System.out.println("로그인 실패...");
            return "redirect:/member/login";
        }
    }

}
