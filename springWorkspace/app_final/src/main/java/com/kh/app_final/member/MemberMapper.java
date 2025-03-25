package com.kh.app_final.member;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MemberMapper {

    @Insert("""
            INSERT INTO MEMBER 
            (   NO
                , ID
                , PWD
                , NICK
            )
            VALUES 
            (
                SEQ_MEMBER.NEXTVAL
                , #{id}
                , #{pwd}
                , #{nick}
            )
            """)
    void join(MemberVo vo);

    @Select("""
            SELECT
                NO, ID, PWD, NICK, ENROLL_DATE, MODIFY_DATE, DEL_YN 
            FROM MEMBER
            WHERE ID=#{id}
            """)
    MemberVo findUserById(String id);
}
