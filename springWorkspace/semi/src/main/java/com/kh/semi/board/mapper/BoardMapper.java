package com.kh.semi.board.mapper;

import com.kh.semi.board.vo.AttachmentVo;
import com.kh.semi.board.vo.BoardVo;
import com.kh.semi.category.vo.CategoryVo;
import com.kh.semi.util.page.PageVo;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface BoardMapper {

    // 게시글 insert
    @Insert("""
            INSERT INTO BOARD
            (
                NO
                , TITLE
                , CONTENT
                , CATEGORY_NO
                , WRITER_NO
            )
            VALUES
            (
                SEQ_BOARD.NEXTVAL
                , #{title}
                , #{content}
                , #{categoryNo}
                , #{writerNo}
            )
            """)
    int write(BoardVo vo);

    List<BoardVo> list(PageVo pvo, String searchType, String searchValue);

    @Select("""
            SELECT 
                NO,
                NAME
            FROM CATEGORY
            """)
    List<CategoryVo> cateList();


    int getBoardCnt(String searchType, String searchValue);


    int insertBoardAttachment(List<String> changeList);

    @Select("""
            SELECT
                B.NO
                , B.TITLE
                , B.CONTENT
                , B.CATEGORY_NO
                , C.NAME        AS CATEGORY_NAME
                , B.WRITER_NO
                , M.NICK        AS WRITER_NICK
                , B.HIT
                , B.CREATE_DATE
                , B.DEL_YN
            FROM BOARD B
            JOIN MEMBER M ON (B.WRITER_NO = M.NO)
            JOIN CATEGORY C ON (B.CATEGORY_NO = C.NO)
            WHERE B.NO = #{bno}
            AND B.DEL_YN = 'N'
            """)
    BoardVo getBoardDetail(String bno);

    @Update("""
            UPDATE BOARD
            SET HIT = HIT+1
            WHERE NO = #{bno}
            AND DEL_YN = 'N'
            """)
    int increaseHit(String bno);


    @Update("""
            Update Board
            SET 
                DEL_YN = 'Y'
            WHERE NO = #{no}
            """)
    int delete(String bno);

    @Update("""
            UPDATE BOARD
            SET 
                TITLE = #{title}
                , CONTENT = #{content}
                , CATEGORY_NO = #{categoryNo}
            WHERE NO = #{no}
            AND DEL_YN = 'N'
            """)
    int update(BoardVo vo);

    @Select("""
            SELECT * 
            FROM BOARD_ATTACHMENT
            WHERE REF_NO = #{bno}
            AND DEL_YN = 'N'
            ORDER BY NO DESC
            """)
    List<AttachmentVo> getAttachmentVoList(String bno);

    @Update("""
            UPDATE BOARD_ATTACHMENT
            SET DEL_YN = 'Y'
            WHERE NO = #{ano}
            """)
    int delAttachment(String ano);


    int updateBoardAttachment(List<String> changeNameList, String no);
}
