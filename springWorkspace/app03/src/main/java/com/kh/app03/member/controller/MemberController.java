package com.kh.app03.member.controller;

import com.kh.app03.member.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

    @Autowired
    private MemberMapper mapper;
    // MemberMapper 타입 변수 선언하고
    // @Autowired 달아주면 알아서 할당됨 (할당을 안했음에도 불구하고,,)

    @GetMapping("member/join")
    @ResponseBody // 해당 문자열 그대로 내보내가 (JSP 포워딩 X)
    public String join() {
        System.out.println("MemberController.join");

        mapper.m01();
        // 매퍼 호출하기 : 매퍼객체.m01();
        // 그러나 인터페이스는 객체를 못만들기 때문에 매퍼객체를 못만든다..
        // MemberMappeer mapper = new MemberMapper(); => 불가
        // 그러면 ???
        // MemberMapper 타입 변수 선언 및 Autowired 후 그걸로 함수 호출하면 된다

        return "join ok~!";
    }

}
