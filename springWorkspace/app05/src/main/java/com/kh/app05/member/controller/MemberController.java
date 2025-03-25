package com.kh.app05.member.controller;

import com.kh.app05.member.service.MemberService;
import com.kh.app05.member.vo.MemberVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
@RequiredArgsConstructor
public class MemberController {

    // 필드에다가 Autowired 하는 거 좋지 않음,,
    // 생성자 injection 으로 하는게 더 좋음,,
    // 앞으로는 @Autowired 안붙이고
    // 필드에 final 붙이고
    // 생성자 명시 대신 @RequiredArgsConstructor 붙일것임

    //@Autowired
    private final MemberService ms;

//    public MemberController(MemberService ms) {
//        this.ms = ms;
//    }
//      =>  @RequiredArgsConstructor 붙이면 이 생성자 자동으로 만들어줌

    // 회원가입 화면
    @GetMapping("join")
    public String join() {
        return "member/join";
    }

    // 회원가입 처리
    @PostMapping("join")
    public String join(MemberVo vo) {
        // data
        // service
        int result = ms.join(vo);

        // result
        if (result == 1) {
            return "redirect:/home";
        }
        else {
            return "redirect:/error";
        }
    }

    // 로그인 화면
    @GetMapping("login")
    public String login() {
        return "member/login";
    }

    // 로그인 처리
    @PostMapping("login")
    public String login(MemberVo vo, HttpSession session) {
        // service
        MemberVo loginMemberVo = ms.login(vo);
        System.out.println("loginMemberVo = " + loginMemberVo);

        // result
        session.setAttribute("loginMemberVo", loginMemberVo);
        return "redirect:/home";
    }
}
