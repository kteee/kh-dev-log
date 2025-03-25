package com.kh.semi.admin.controller;

import com.kh.semi.admin.service.AdminService;
import com.kh.semi.admin.vo.AdminVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
@RequiredArgsConstructor
@Slf4j
public class AdminController {

    private final AdminService service;

    // 관리자 로그인 (화면)
    @GetMapping("login")
    public String login() {
        return "admin/login";
    }

    // 관리자 로그인 (처리)
    @PostMapping("login")
    public String login(AdminVo vo, HttpSession session) {
        AdminVo loginAdminVo = service.login(vo);
        session.setAttribute("loginAdminVo", loginAdminVo);

        if(loginAdminVo == null) {
            throw new IllegalStateException("관리자 로그인 중 예외 발생..");
        }

        session.setAttribute("alertMsg" , "관리자 로그인 성공!");
        return "redirect:/home";
    }

}
