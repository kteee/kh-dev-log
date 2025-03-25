package com.kh.app98.advice;

import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.io.IOException;

// @ControllerAdvice(basePackages = "com.kh.app98.advice")
@ControllerAdvice(annotations = KhAnno.class)
public class KhErrorProcessor {

    @ExceptionHandler(Exception.class)
    public void handleErrorNPE(HttpServletResponse resp) throws IOException {
        System.out.println("예외 발생~~");
        resp.sendRedirect("/errorPage.jsp");
    }

//    @ExceptionHandler(IllegalStateException.class)
//    public void handleErrorISE(Exception e){
//        System.out.println("ISE 발생~~");
//    }

}
