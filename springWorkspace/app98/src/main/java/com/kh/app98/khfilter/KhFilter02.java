package com.kh.app98.khfilter;

import jakarta.servlet.*;

import java.io.IOException;

public class KhFilter02 implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("Kh필터02 호출됨~~~");
        servletRequest.setAttribute("food", "apple");
        filterChain.doFilter(servletRequest, servletResponse);
        // servletResponse.getWriter().println("<h1>Page made by Filter02</h1>");
        // 필터든 컨트롤러든 둘중에 하나가 response 하도록 설정해야 함
        // 둘 다 하면 에러남,,,
    }
}
