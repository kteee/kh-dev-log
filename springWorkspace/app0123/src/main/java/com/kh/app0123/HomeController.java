package com.kh.app0123;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("home")
    public String home(){
        UserDetails loginInfo = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String id =loginInfo.getUsername();
        String role = loginInfo.getAuthorities().iterator().next().getAuthority();
        return "홈페이지!!" + id + " : " + role;
    }

    @GetMapping("board")
    public String board() {
        UserDetails loginInfo = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String id =loginInfo.getUsername();
        String role = loginInfo.getAuthorities().iterator().next().getAuthority();
        return "board!!" + id + " : " + role;
    }

    @GetMapping("admin")
    public String admin(){
        UserDetails loginInfo = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String id =loginInfo.getUsername();
        String role = loginInfo.getAuthorities().iterator().next().getAuthority();
        return "admin page!!! (authorized - ROLE_ADMIN)" + id + " : " + role;
    }

}
