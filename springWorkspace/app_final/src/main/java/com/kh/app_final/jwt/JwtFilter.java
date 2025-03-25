package com.kh.app_final.jwt;

import com.kh.app_final.member.MemberVo;
import com.kh.app_final.security.KhUserDetails;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Slf4j
@RequiredArgsConstructor
public class JwtFilter extends OncePerRequestFilter { // 딱 한번만 동작하는 필터

    private final JwtUtil jwtUtil;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String token = request.getHeader("token");
        if(token == null){
            log.warn("TOKEN IS NULL ...");
            filterChain.doFilter(request, response);
            return;
        }

        Boolean isExpired = jwtUtil.isExpired(token);

        if(isExpired) {
            log.warn("token is expried...");
            return;
        }

        Long no = jwtUtil.getNo(token);
        String id = jwtUtil.getId(token);
        String role = jwtUtil.getRole(token);

        MemberVo vo = new MemberVo();
        vo.setNo(no);
        vo.setId(id);

        // JWT를 기반으로 인증 처리
        HttpSession session = request.getSession();
        session.setAttribute("loginMemberVo", vo);

        KhUserDetails KhUserDetails = new KhUserDetails(vo, role);
        Authentication authToken = new UsernamePasswordAuthenticationToken(KhUserDetails, null, KhUserDetails.getAuthorities() );
        SecurityContextHolder.getContext().setAuthentication(authToken);

        filterChain.doFilter(request, response);

    }
}
