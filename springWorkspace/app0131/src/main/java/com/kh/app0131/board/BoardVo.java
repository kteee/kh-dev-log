package com.kh.app0131.board;

import lombok.Data;

@Data
public class BoardVo {

    private String title;
    private String content;
    private String writer; // 작성자 닉네임

}
