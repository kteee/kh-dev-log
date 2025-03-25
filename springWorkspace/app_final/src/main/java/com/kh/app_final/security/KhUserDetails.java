package com.kh.app_final.security;

import com.kh.app_final.member.MemberVo;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

public class KhUserDetails implements UserDetails {
    private String id;
    private String pwd;
    private String role;
    private Long no;

    public KhUserDetails(MemberVo vo, String role) {
        this.no = vo.getNo();
        this.id = vo.getId();
        this.pwd = vo.getPwd();
        this.role = role;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return List.of(new SimpleGrantedAuthority(role));
    }

    @Override
    public String getPassword() {
        return this.pwd;
    }

    @Override
    public String getUsername() {
        return this.id;
    }

    public Long getNo(){
        return this.no;
    }
}
