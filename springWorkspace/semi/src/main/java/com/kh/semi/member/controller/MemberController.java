package com.kh.semi.member.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.semi.member.service.MemberService;
import com.kh.semi.member.vo.MemberVo;
import com.kh.semi.util.FileUploader;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.lang.reflect.Member;
import java.util.HashMap;
import java.util.UUID;

@Controller
@RequestMapping("member")
@RequiredArgsConstructor
@Slf4j
public class MemberController {

    @Value("#{pathInfo.getProfilePath()}")
    private String profilePath;
    // staticPath 변수에 내가 작성해둔 속성값 x를 불러오게 됨

    // private Logger log = LoggerFactory.getLogger(현재클래스정보) ;
    // 로거 객체 만들기
    // 근데 ..? 이 객체만드는것도? 롬복이 자동으로 할 수 있다.
    // => @Slf4j
    private final MemberService service;


    // 회원가입 화면
    @GetMapping("join")
    public String join() {
        return "member/join";
    }

    // 회원가입 처리
    @PostMapping("join")
    public String join(MemberVo vo, MultipartFile f, HttpSession session) throws Exception {

        String path = profilePath;
        String changeName = FileUploader.save(f, profilePath);

        vo.setProfile(changeName);

        int result = service.join(vo);

        if(result != 1) {
            String errCode = "[MEMBER-JOIN-001] 회원가입 중 오류 발생";
            log.warn(errCode);
            throw new Exception(errCode);
        }

        session.setAttribute("alertMsg","회원가입이 완료되었습니다.");
        return "redirect:/member/login";
    }

    // 로그인 화면
    @GetMapping("login")
    public String login() {
        return "member/login";
    }

    // 로그인 처리
    @PostMapping("login")
    public String login(MemberVo vo, HttpSession session) throws Exception {

        MemberVo loginMemberVo = service.login(vo);

        if(loginMemberVo == null) {
            String errCode = "[MEMBER-LOGIN-001] 로그인 중 에러 발생";
            // 에러 로그 남기기
            log.warn(errCode);
            // 근데 이러면 콘솔창에 나옴
            // 파일에 저장해야 의미가 있음 -> logback-spring.xml 설정필요
            throw new Exception(errCode);
        }

        session.setAttribute("loginMemberVo", loginMemberVo);

        return "redirect:/home";
    }

    // 마이페이지 화면
    @GetMapping("mypage")
    public String mypage(HttpSession session) {
        if(session.getAttribute("loginMemberVo") == null) {
            return "redirect:/member/login";
        }
        return "member/mypage";
    }

    // 회원정보 수정
    @PostMapping("edit")
    public String edit(MemberVo vo, HttpSession session) throws Exception {

//        if (vo.getPwd().length() == 0) {
//            vo.setPwd(null);
//        }

        MemberVo loginMemberVo = (MemberVo)session.getAttribute("loginMemberVo");
        vo.setNo(loginMemberVo.getNo());

        MemberVo updatedMemberVo = service.edit(vo);
        System.out.println("updatedMemberVo = " + updatedMemberVo);
        session.setAttribute("loginMemberVo", updatedMemberVo);

        if(updatedMemberVo == null) {
            String errCode = "[MEMBER-EDIT-001] 회원정보 수정 중 오류 발생";
            log.warn(errCode);
            throw new Exception(errCode);
        }

        return "redirect:/member/mypage";
    }

    // 회원탈퇴 화면
    @GetMapping("quit")
    public String quit() {
        return "member/quit";
    }

    // 회원탈퇴 처리
    @PostMapping("quit")
    public String quit(MemberVo vo, HttpSession session) throws Exception {

        MemberVo loginMemberVo =(MemberVo)session.getAttribute("loginMemberVo");
        vo.setNo(loginMemberVo.getNo());

        int result = service.quit(vo);

        if (result != 1) {
            String errCode = "[MEMBER-QUIT-001] 회원탈퇴 중 오류 발생";
            log.warn(errCode);
            throw new Exception(errCode);
        }

        session.removeAttribute("loginMemberVo");
        return "redirect:/home";
    }

    // 아이디 중복 체크
    @PostMapping("dup-id")
    @ResponseBody
    public String checkDupId(String id) throws Exception {

        HashMap<String, String> m = new HashMap<>();
        m.put("data", id);

        boolean isDup = service.checkDupId(id);
        if(isDup){
            m.put("status", "bad");
        }
        else {
            m.put("status", "good");
        }

        ObjectMapper objectMapper = new ObjectMapper();
        String str = objectMapper.writeValueAsString(m);

        return str;
    }

    // 로그아웃
    @GetMapping("logout")
    public String logout(HttpSession session){
        session.removeAttribute("loginMemberVo");
        session.setAttribute("alertMsg","로그아웃 되었습니다.");
        return "redirect:/home";
    }
}
