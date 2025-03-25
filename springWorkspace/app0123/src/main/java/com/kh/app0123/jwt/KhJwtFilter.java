package com.kh.app0123.jwt;

import com.kh.app0123.member.MemberVo;
import com.kh.app0123.security.KhUserDetails;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@RequiredArgsConstructor
public class KhJwtFilter extends OncePerRequestFilter {
    // 그냥 필터랑 비슷하긴한데 요청에 대해 한번만 동작하는 필터

    private final KhJwtUtil khJwtUtil;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        // 토큰 가져와서 분해하고 검증해서 필요한데이터 (아이디, 역할) 얻기
        String authorization = request.getHeader("Authorization");

        if(authorization == null || !authorization.startsWith("Bearer ")) {
            System.out.println("JWT 없음");
            filterChain.doFilter(request, response);
            return;
        }


        String jwt = authorization.split(" ")[1];
        System.out.println("jwt = " + jwt);

        if(khJwtUtil.isExpired(jwt)) {
            System.out.println("토큰 만료...");
            filterChain.doFilter(request, response);
            return;
        }

        String id = khJwtUtil.getId(jwt);
        String role = khJwtUtil.getRole(jwt);

        MemberVo vo = new MemberVo();
        vo.setId(id);
        vo.setRole(role);

        KhUserDetails khUserDetails = new KhUserDetails(vo);

        Authentication auth = new UsernamePasswordAuthenticationToken(khUserDetails, null, khUserDetails.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(auth);
        filterChain.doFilter(request, response);
    }
}
