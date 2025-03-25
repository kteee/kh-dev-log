package com.kh.app06.member.controller;

import com.kh.app06.member.member.vo.MemberVo;
import com.kh.app06.member.service.MemberService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService service;

    @GetMapping("join")
    public String join() {
        return "join";
    }

    @PostMapping("login")
    public String login(MemberVo vo, HttpSession session) {
        MemberVo loginMemberVo = service.login(vo);
        session.setAttribute("loginMemberVo",loginMemberVo);
        System.out.println("loginMemberVo = " + loginMemberVo);
        return "redirect:/home";
    }

    @PostMapping("join")
    public String join(MemberVo vo) {
        int result = service.join(vo);

        if(result == 1) {
            return "redirect:/home";
        }
        else {
            return "redirect:/error";
        }
    }
}
