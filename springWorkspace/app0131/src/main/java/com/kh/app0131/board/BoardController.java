package com.kh.app0131.board;

import com.kh.app0131.member.MemberVo;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/board")
@CrossOrigin
public class BoardController {

    @PostMapping("write")
    public String write(@RequestBody BoardVo vo, HttpSession session) {
        MemberVo loginMemberVo = (MemberVo) session.getAttribute("loginMemberVo");
        System.out.println("제목 : " + vo.getTitle());
        System.out.println("내용 : " + vo.getContent());
        System.out.println("작성자 : " + loginMemberVo.getNick());
        return "write ok!!";
    }

}
