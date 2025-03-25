package com.kh.myapp03;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
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

    @Insert("""
            INSERT INTO BOARD(
                NO
                ,TITLE
                , WRITER
            )
            VALUES
            (
                SEQ_BOARD.NEXTVAL
                , #{title}
                , #{writer}
            )
            """)
    int write(BoardVo vo);

    @Select("""
            SELECT 
                NO
                , TITLE
                , WRITER
            FROM BOARD
            WHERE NO = #{no}
            """)
    BoardVo detail(String no);

    @Delete("""
            DELETE FROM BOARD
            WHERE NO = #{no}
            """)
    int delete(String no);
}
