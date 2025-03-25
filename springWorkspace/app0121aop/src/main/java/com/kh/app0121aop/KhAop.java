package com.kh.app0121aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class KhAop {

    @Around("execution( public * com..MemberService.*(..) )")
    public Object m01(ProceedingJoinPoint jp) throws Throwable{
        System.out.println("m01 start..");
        // 이 둘 사이에 원래 메소드 동작
        Object result = jp.proceed();
        System.out.println("m01 end..");
        return result;
        // Around : 이전이랑 이후 둘다
    }

}
