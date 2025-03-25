package com.kh.app0123.member;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class MemberController {

    private final MemberService service;

    @PostMapping("join")
    public String join(MemberVo vo){
        System.out.println("MemberController.join Start~@");
        service.join(vo);
        return "join ok";
    }

}
