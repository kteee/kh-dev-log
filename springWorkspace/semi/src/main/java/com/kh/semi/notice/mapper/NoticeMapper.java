package com.kh.semi.notice.mapper;

import com.kh.semi.notice.vo.NoticeReplyVo;
import com.kh.semi.notice.vo.NoticeVo;
import com.kh.semi.util.page.PageVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface NoticeMapper {

    @Insert("""
            INSERT INTO NOTICE
            (
                NO
                , TITLE
                , CONTENT
                , WRITER_NO
            )
            VALUES
            (
                SEQ_NOTICE.NEXTVAL
                , #{title}
                , #{content}
                , #{writerNo}
            )
            """)
    int write(NoticeVo vo);

    @Select("""
            SELECT
                A.NO
                , A.TITLE
                , A.CONTENT
                , A.WRITER_NO
                , B.NICK       AS WRITER_NICK
                , A.HIT
                , A.CREATE_DATE
                , A.DEL_YN
            FROM NOTICE A
            JOIN ADMIN B ON (A.WRITER_NO = B.NO)
            WHERE A.DEL_YN = 'N'
           ${str}
            ORDER BY A.NO DESC
            OFFSET #{pvo.offset} ROWS FETCH NEXT #{pvo.boardLimit} ROWS ONLY
            """)
    List<NoticeVo> getNoticeList(PageVo pvo, String str);

    @Select("""
            SELECT COUNT(*)
            FROM NOTICE
            WHERE DEL_YN = 'N'
            """)
    int getNoticeCnt();

    @Select("""
            SELECT
                A.NO
                , A.TITLE
                , A.CONTENT
                , A.WRITER_NO
                , B.NICK       AS WRITER_NICK
                , A.HIT
                , A.CREATE_DATE
                , A.DEL_YN
            FROM NOTICE A
            JOIN ADMIN B ON (A.WRITER_NO = B.NO)
            WHERE A.NO = #{no}
            AND A.DEL_YN = 'N'
            """)
    NoticeVo getNoticeByNo(String no);

    @Update("""
            UPDATE NOTICE
            SET DEL_YN = 'Y'
            WHERE NO IN (${x})
            """)
    int delete(String x);

    @Update("""
            UPDATE NOTICE
            SET TITLE = #{title}
                , CONTENT = #{content}
            WHERE NO = #{no}
            AND DEL_YN = 'N'
            AND WRITER_NO = #{writerNo}
            """)
    int edit(NoticeVo vo);

    @Insert("""
            INSERT INTO NOTICE_REPLY
            (
                NO
                , CONTENT
                , REF_NO
                , WRITER_NO
            ) 
            VALUES 
            (
                SEQ_NOTICE_REPLY.NEXTVAL
                , #{content} 
                , #{refNo}
                , #{writerNo}
            )
            """)
    int replyWrite(NoticeReplyVo vo);

    @Select("""
            SELECT
                N.NO
                ,N.CONTENT
                ,N.REF_NO
                ,N.WRITER_NO
                ,N.CREATE_DATE
                ,N.DEL_YN
                ,M.NICK
            FROM NOTICE_REPLY N
            JOIN MEMBER M ON (N.WRITER_NO = M.NO)
            WHERE N.REF_NO = #{noticeNo}
            AND N.DEL_YN = 'N'
            """)
    List<NoticeReplyVo> getNoticeReplyList(String noticeNo);
}
