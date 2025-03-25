package com.kh.app98.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class KhInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("KhInterceptor : preHandle~~");
        return true;
        // 필터처럼,, 컨트롤러까지 보낼건지 아니면 막을건지를 결정할 수 있음
        // 리턴값 true면 컨트롤러까지 넘어가고 false면 못넘어감
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("KhInterceptor : postHandle~~");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("KhInterceptor : afterCompletion~~");
    }
}
