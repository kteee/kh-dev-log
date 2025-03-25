package com.kh.semi.member.mapper;

import com.kh.semi.member.vo.MemberVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface MemberMapper {

    @Insert("""
            INSERT INTO MEMBER(
                NO
                , ID
                , PWD
                , NICK
                , PROFILE
            )
            VALUES(
                SEQ_MEMBER.NEXTVAL
                , #{id}
                , #{pwd}
                , #{nick}
                , #{profile}
            )
            """)
    int join(MemberVo vo);

    @Select("""
            SELECT
                NO
                , ID
                , PWD
                , NICK
                , PROFILE
                , DEL_YN
                , ENROLL_DATE
                , MODIFY_DATE
            FROM MEMBER
            WHERE ID = #{id}
            AND PWD = #{pwd}
            AND DEL_YN = 'N'
            """)
    MemberVo login(MemberVo vo);

    int edit(MemberVo vo);
    // 어노테이션은 동적쿼리 안된다고 함...
    // xml 로 작성함

    @Select("""
            SELECT
                NO
                , ID
                , PWD
                , NICK
                , DEL_YN
                , ENROLL_DATE
                , MODIFY_DATE
            FROM MEMBER
            WHERE NO = #{no}
            AND DEL_YN = 'N'
            """)
    MemberVo getMemberByNo(String no);

    @Update("""
            UPDATE MEMBER
            SET DEL_YN = 'Y'
            WHERE NO = #{no}
            AND PWD = #{pwd}
            """)
    int quit(MemberVo vo);

    @Select("""
            SELECT *
            FROM MEMBER
            WHERE ID = #{id}
            """)
    MemberVo checkDupId(String id);
}
