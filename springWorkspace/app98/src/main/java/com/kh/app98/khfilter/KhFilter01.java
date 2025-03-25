package com.kh.app98.khfilter;

import jakarta.servlet.*;

import java.io.IOException;

public class KhFilter01 implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("Kh필터01 호출됨~~");
        filterChain.doFilter(servletRequest, servletResponse);
    }
}
