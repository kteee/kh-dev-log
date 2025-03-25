package com.kh.app98.khfilter;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class LoginCheckFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String id = servletRequest.getParameter("id");
        String pwd = servletRequest.getParameter("pwd");

        if ( id == null || pwd == null || id.length() + pwd.length() < 2 ){
            // throw new IllegalStateException("ID, PWD must be not null");
            ((HttpServletResponse) servletResponse).sendRedirect("/login");
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }
}
