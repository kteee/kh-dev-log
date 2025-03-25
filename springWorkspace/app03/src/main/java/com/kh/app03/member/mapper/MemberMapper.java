package com.kh.app03.member.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MemberMapper {

    // 원래는 매퍼 파일은 xml로 작성했는데.. ??
    // => 자바의 interface 이용하여 작성해도 됨
    // 인터페이스는 추상 메서드만 만들 수 있음

    // public abstract void m01();
    // public abstract 생략 가능
    // -> xml의 id(m01), return타입(void)로 대체
    // <select id="" returnType="" >
    // insert의 returnType = int
    // @Insert("INSERT INTO MEMBER ( NO ,ID ,PWD ,NICK ) VALUES ( SEQ_MEMBER.NEXTVAL ,#{id},#{pwd} ,#{nick} )")
    @Insert("INSERT INTO MEMBER ( NO ,ID ,PWD ,NICK ) VALUES ( SEQ_MEMBER.NEXTVAL ,'user1104', '1234' , 'nick1104')")
    int m01();

}
