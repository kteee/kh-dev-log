package com.kh.mybook.mapper;

import com.kh.mybook.vo.BookVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface BookMapper {

    @Insert("""
            INSERT INTO BOOK
            (
                NO
                , TITLE
                , PRICE
                , WRITER
                , PUBLISHED_DATE
            )
            VALUES
            (
                SEQ_BOOK.NEXTVAL
                , #{title}
                , #{price}
                , #{writer}
                , #{publishedDate}
            )
            """)
    int write(BookVo vo);

    @Select("""
            SELECT
                NO
                , TITLE
                , PRICE
                , WRITER
                , PUBLISHED_DATE
                , DEL_YN
            FROM BOOK
            WHERE DEL_YN = 'N'
            ORDER BY NO DESC
            """)
    List<BookVo> getBookList();

    @Select("""
            SELECT
                NO
                , TITLE
                , PRICE
                , WRITER
                , PUBLISHED_DATE
                , DEL_YN
            FROM BOOK
            WHERE NO = #{no}
            AND DEL_YN = 'N'
            """)
    BookVo getBookDetail(String no);

    @Update("""
            UPDATE BOOK
            SET TITLE = #{title}
                , PRICE = #{price}
                , WRITER = #{writer}
                , PUBLISHED_DATE = #{publishedDate}
            WHERE NO = #{no}
            """)
    int edit(BookVo vo);

    @Update("""
            UPDATE BOOK
            SET DEL_YN = 'Y'
            WHERE NO = #{no}
            """)
    int delete(String no);
}
