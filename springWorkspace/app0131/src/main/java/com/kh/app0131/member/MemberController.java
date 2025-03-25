package com.kh.app0131.member;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/member")
@RequiredArgsConstructor
@Slf4j
@CrossOrigin
public class MemberController {

    private final MemberService service;

    @PostMapping("join")
    public String join(@RequestBody MemberVo vo){
        int result = service.join(vo);
        log.info("result ::: {}" , result);
        return "join called!!";
    }

    @PostMapping("login")
    public String login(@RequestBody MemberVo vo){
        String token = service.login(vo);
        return token;
    }
}
