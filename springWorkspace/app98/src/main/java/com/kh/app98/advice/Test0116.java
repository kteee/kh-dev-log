package com.kh.app98.advice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/test0116")
@KhAnno
public class Test0116 {

    @GetMapping("m01")
    public String m01(){
        System.out.println("test0116.m01");
        return "<h1>m01</h1>";
    }

    @GetMapping("m02")
    public String m02(){
        System.out.println("test0116.m02");
        if(true) {
            throw new IllegalStateException();
        }
        return "<h1>m02</h1>";
    }

    @GetMapping("m03")
    public String m03(){
        System.out.println("test0116.m03");
        return "<h1>m03</h1>";
    }

}
