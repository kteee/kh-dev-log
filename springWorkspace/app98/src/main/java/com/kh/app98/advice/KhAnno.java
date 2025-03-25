package com.kh.app98.advice;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.TYPE)  // 클래스 대상으로 설정
@Retention(RetentionPolicy.RUNTIME) // 어떤 범위까지 필요한지 설정
public @interface KhAnno {

}
