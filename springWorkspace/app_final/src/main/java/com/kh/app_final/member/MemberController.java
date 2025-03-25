package com.kh.app_final.member;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.lang.reflect.Member;

@RestController
@RequestMapping("api/member")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService service;

    @PostMapping("join")
    public void join(@RequestBody MemberVo vo){
        try{
            service.join(vo);
        }catch(Exception e){
            throw new IllegalStateException("[MEMBER_JOIN] JOIN FAIL...");
        }
    }

    @PostMapping("login")
    public String login(@RequestBody MemberVo vo) {
        System.out.println("vo = " + vo);
        try{
            return service.login(vo);
        }catch(Exception e) {
            throw new IllegalStateException("[MEMBER_LOGIN] LOGIN FAIL...");
        }
    }
}
