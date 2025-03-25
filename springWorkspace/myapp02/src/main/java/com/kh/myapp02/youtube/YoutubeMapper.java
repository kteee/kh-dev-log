package com.kh.myapp02.youtube;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface YoutubeMapper {

    @Select("""
            SELECT
                NO
                , LINK
                , 'https://img.youtube.com/vi/' || SUBSTR(LINK, 33) || '/0.jpg' AS SUMNAIL
                , TITLE
                , WRITER
                , VIEWS
                , SUBSTR(ENROLL_DATE, 0, 8) AS ENROLL_DATE
            FROM YOUTUBE
            """)
    List<YoutubeVo> list();
}
