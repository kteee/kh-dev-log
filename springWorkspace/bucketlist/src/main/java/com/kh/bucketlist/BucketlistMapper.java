package com.kh.bucketlist;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface BucketlistMapper {

    @Insert("""
            INSERT INTO BUCKETLIST
            (
                NO
                , NAME
                , CATEGORY
                , PRIORITY
                , COMPLETE_DATE
            )
            VALUES
            (
                SEQ_BUCKETLIST.NEXTVAL
                , #{name}
                , #{category}
                , #{priority}
                , #{completeDate}
            )
            """)
    int write(BucketlistVo vo);

    @Select("""
            SELECT
                NO
                , NAME
                , CATEGORY
                , PRIORITY
                , COMPLETE_DATE
                , ENROLL_DATE
                , DEL_YN
            FROM BUCKETLIST
            WHERE DEL_YN = 'N'
            ORDER BY NO DESC
            """)
    List<BucketlistVo> getList();

    @Select("""
            SELECT
                NO
                , NAME
                , CATEGORY
                , PRIORITY
                , COMPLETE_DATE
                , ENROLL_DATE
                , DEL_YN
            FROM BUCKETLIST
            WHERE NO = #{no}
            AND DEL_YN = 'N'
            """)
    BucketlistVo getDetail(Long no);

    @Update("""
            UPDATE BUCKETLIST
            SET NAME = #{name}
                , CATEGORY = #{category}
                , PRIORITY = #{priority}
                , COMPLETE_DATE = #{completeDate}
            WHERE NO = #{no}
            """)
    int edit(BucketlistVo vo);

    @Update("""
            UPDATE BUCKETLIST
            SET DEL_YN = 'Y'
            WHERE NO = #{no}
            """)
    int delete(Long no);
}
