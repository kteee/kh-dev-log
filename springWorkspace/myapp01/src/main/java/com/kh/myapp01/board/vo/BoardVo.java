package com.kh.myapp01.board.vo;

import lombok.Data;

@Data
public class BoardVo {
    private String no;
    private String title;
    private String content;
    private String writer_no;
    private String hit;
    private String enroll_date;
    private String modify_date;
    private String del_yn;
}
