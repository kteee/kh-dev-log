package com.kh.app_final.gallery;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface GalleryMapper {

//    @Select("""
//            SELECT
//            NO
//            ,WRITER_NO
//            ,TITLE
//            ,CONTENT
//            ,ENROLL_DATE
//            ,ORIGIN_NAME
//            ,FILE_URL
//            ,DEL_YN
//            FROM GALLERY
//            WHERE DEL_YN = 'N'
//            ORDER BY NO DESC
//            OFFSET #{offset} ROWS FETCH NEXT #{limit} ROWS ONLY
//            """)
    @Select("""
            SELECT *
            FROM (
                SELECT
                    NO,
                    WRITER_NO,
                    TITLE,
                    CONTENT,
                    ENROLL_DATE,
                    ORIGIN_NAME,
                    FILE_URL,
                    DEL_YN,
                    ROWNUM AS RNUM
                FROM (
                    SELECT
                        NO,
                        WRITER_NO,
                        TITLE,
                        CONTENT,
                        ENROLL_DATE,
                        ORIGIN_NAME,
                        FILE_URL,
                        DEL_YN
                    FROM GALLERY
                    WHERE DEL_YN = 'N'
                    ORDER BY NO DESC
                )
                WHERE ROWNUM <= #{offset} + #{limit}
            )
            WHERE RNUM > #{offset}
            """)
    List<GalleryVo> findAll(int offset , int limit);

    @Insert("""
            INSERT INTO GALLERY
            (
            NO
            ,WRITER_NO
            ,TITLE
            ,CONTENT
            ,ORIGIN_NAME
            ,FILE_URL
            )
            VALUES
            (
            SEQ_GALLERY.NEXTVAL
            ,#{writerNo}
            ,#{title}
            ,#{content}
            ,#{originName}
            ,#{fileUrl}
            )
            """)
    void insert(GalleryVo vo);

    @Select("""
            SELECT
            NO
            ,WRITER_NO
            ,TITLE
            ,CONTENT
            ,ENROLL_DATE
            ,ORIGIN_NAME
            ,FILE_URL
            ,DEL_YN
            FROM GALLERY
            WHERE NO = #{no}
            AND DEL_YN = 'N'
            """)
    GalleryVo findByNo(String no);

    @Select("""
            SELECT COUNT(NO)
            FROM GALLERY
            WHERE DEL_YN = 'N'
            """)
    int getListCount();

    @Update("""
            UPDATE GALLERY
            SET
                DEL_YN = 'Y'
            WHERE NO = #{no}
            """)
    void delete(Long no);
}