package com.kh.app0123.security;

import com.kh.app0123.jwt.KhJwtUtil;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import java.io.IOException;

@RequiredArgsConstructor
public class KhLoginFilter extends UsernamePasswordAuthenticationFilter {

    private final AuthenticationManager authenticationManager;
    private final KhJwtUtil khJwtUtil;

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException {

        System.out.println("내가 만든 로그인 필터~~");

         String id = request.getParameter("id");
         String pwd = request.getParameter("pwd");

        // 아이디, 패스워드 얻어오는 거 아래처럼 할수있음 (시큐리티 내부적으로 만들어놓은거)
        // String id = obtainUsername(request);
        // String pwd = obtainPassword(request);

        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(id, pwd, null);

        // return 인증매니저.인증(토큰);
        return authenticationManager.authenticate(token);
    }

    @Override
    protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain, Authentication authResult) throws IOException, ServletException {
        System.out.println("KhLoginFilter.successfulAuthentication 인증성공!!");

        //JWT 발급
        KhUserDetails khUserDetails = (KhUserDetails) authResult.getPrincipal();
        String id = khUserDetails.getUsername();
        String role = khUserDetails.getAuthorities().iterator().next().getAuthority();
        int expMs = 1000*60*15; // 15분
        String jwtToken = khJwtUtil.createJwt(id, role, expMs);
        System.out.println("jwtToken = " + jwtToken);
        response.addHeader("Authorization", "Bearer " + jwtToken);

        // 헤더에 토큰 추가
        response.addHeader("Authorization", "Bearer " + jwtToken);

        // 쿠키에 토큰 추가
        Cookie c = new Cookie("jwt", jwtToken);
        c.setMaxAge(expMs);
        c.setPath("/");
        c.setHttpOnly(true);
        response.addCookie(c);
        
    }

    @Override
    protected void unsuccessfulAuthentication(HttpServletRequest request, HttpServletResponse response, AuthenticationException failed) throws IOException, ServletException {
        System.out.println("KhLoginFilter.unsuccessfulAuthentication 인증실패...");
        response.setStatus(401);
    }

    @Override
    protected String obtainUsername(HttpServletRequest request) {
        return request.getParameter("id");
    }

    @Override
    protected String obtainPassword(HttpServletRequest request) {
        return request.getParameter("pwd");
    }

}



