package com.kh.app.member.controller;

import com.kh.app.member.vo.MemberVo;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

    @GetMapping("abc") // "abc" 라는 요청을 받으면 해당 메서드 실행 (요청받기)
    @ResponseBody   // return값 응답하기
    public String m01(MemberVo vo) {
        // 메서드마다 annotation 달 수 있어서
        // 컨트롤러 클래스를 여러개 분리 안해도 됨
        // 톰캣 환경설정 따로 안했는데
        // 저절로 해당 자바 프로그램이 톰캣에 올라가있음..!
        // 스프링부트에는 톰캣이 내장되어 있음...

        System.out.println("m01 called..!");

        // 데이터 받아와서 MemberVo 객체로 뭉쳐주기
        // String id = req.getParameter("id");
        // String pwd = req.getParameter("pwd");
        // String nick = req.getParameter("nick");

        // MemberVo vo = new MemberVo();
        // vo.setId(id);
        // vo.setPwd(pwd);
        // vo.setNick(nick);

        // req.parameter~ 로 데이터 받아올 필요 x
        // 메서드 파라미터로 바로 받아올 수 있음
        // 데이터 뭉쳐서 객체로 만들 필요 x
        // 메서드 파라미터에 MemberVo 하면
        // 데이터 받아오기, 객체만들기 다 한번에 해줌

        System.out.println("vo = " + vo);

        return "zzz";
    }
}