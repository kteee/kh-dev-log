package com.kh.book.book.mapper;

import com.kh.book.book.vo.BookVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.ui.Model;

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
    List<BookVo> getBookList(Model model);

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
    BookVo getBookDetail(String no, Model model);

    @Update("""
            UPDATE BOOK
            SET DEL_YN = 'Y'
            WHERE NO = #{no}
            """)
    int delete(String no);
}
