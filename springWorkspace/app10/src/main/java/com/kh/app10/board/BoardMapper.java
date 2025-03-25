package com.kh.app10.board;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface BoardMapper {

    @Select("""
            SELECT 
                NO
                , TITLE
                , WRITER
            FROM BOARD
            ORDER BY NO DESC
            """)
    List<BoardVo> list();
}
