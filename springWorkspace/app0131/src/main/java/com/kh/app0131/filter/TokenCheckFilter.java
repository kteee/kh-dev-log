package com.kh.app0131.filter;

import com.kh.app0131.jwt.JwtUtil;
import com.kh.app0131.member.MemberVo;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import java.io.IOException;

@RequiredArgsConstructor
public class TokenCheckFilter implements Filter {

    private final BCryptPasswordEncoder encoder;
    private final JwtUtil jwtUtil;

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("::: TokenCheckFilter.doFilter");

        HttpServletRequest req = (HttpServletRequest) servletRequest;
        String uri = req.getRequestURI();
        System.out.println("uri = " + uri);

        if(uri.contains("join") || uri.contains("login")){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

//         token 검증
//         token 이라는 key 값으로 데이터 꺼내기
//         kh 라는 문자열로 시작하는지
//         슬래시 구분자를 통해서 넘버 닉네임 있는지
//
//         String token = req.getParameter("token"); // 바디에서 토큰 꺼내오기
          String token = req.getHeader("token"); // 헤더에서 토큰 꺼내오기

//
//        if(token==null) {
//            throw new IllegalStateException();
//        }
//
//        boolean isOk = token.startsWith("kh ");
//
//        if(!isOk){
//            throw new IllegalStateException();
//        }
//        token = token.replaceAll("kh ", "");
//        String[] tokenArr = token.split("###");
//
//        if(tokenArr.length != 3) {
//            throw new IllegalStateException();
//        }

//        String no = tokenArr[0];
//        String nick = tokenArr[1];
//        String encoedeData = tokenArr[2];
//
//        if(no.length() < 1 || nick.length() < 1) {
//            throw new IllegalStateException();
//        }
//
//        // 유효성 검증 (secret 키)
//        boolean isMatch = encoder.matches(no + nick + "zzz", encoedeData);
//        if(!isMatch){
//            throw new IllegalStateException();
//        }
//
        // jwt 존재 여부 검증 => 안해도됨.. 아래 메서드들에서 검증됨..
        // boolean isOk = jwtUtil.checkToken(token);

        // 만료여부 검증
        Boolean isExpired = jwtUtil.isExprire(token);

        if(isExpired) {
            System.out.println("토큰 만료됨..");
            return;
        }

        // jwt에서 데이터 꺼내기
        Long no = jwtUtil.getNo(token);
        String nick = jwtUtil.getNick(token);

        System.out.println("no = " + no);
        System.out.println("nick = " + nick);

        HttpSession session = req.getSession();

        MemberVo vo = new MemberVo();
        vo.setNo(Long.valueOf(no));
        vo.setNick(nick);
        session.setAttribute("loginMemberVo", vo);

        filterChain.doFilter(servletRequest, servletResponse);
        session.invalidate(); // 세션 만료

    }
}
