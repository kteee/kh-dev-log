package com.kh.app0121aop.member;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("member")
public class MemberController {

    private final MemberService service;

    @PostMapping
    public String join(MemberVo vo) {
        service.join(vo);
        return "join ok!!";
    }

    @GetMapping
    public String login(MemberVo vo) {
        MemberVo dbVo = service.login(vo);
        System.out.println("dbVo = " + dbVo);
        return "login ok!!";
    }

}
