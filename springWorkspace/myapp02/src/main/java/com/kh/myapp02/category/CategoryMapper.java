package com.kh.myapp02.category;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CategoryMapper {

    @Select("""
            SELECT  
                NO
                , NAME
            FROM YOUTUBE_CATEGORY
            """)
    List<CategoryVo> list();
}
