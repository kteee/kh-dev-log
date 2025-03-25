package com.kh.app0123.security;

import com.kh.app0123.member.MemberDao;
import com.kh.app0123.member.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class KhUserDetailsService implements UserDetailsService {

    private final MemberDao dao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        MemberVo vo = dao.getMemberVoById(username);

        // return 유저객체;
        return new KhUserDetails(vo);
    }
}
