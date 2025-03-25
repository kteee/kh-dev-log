package com.kh.book.book.vo;

import lombok.Data;

@Data
public class BookVo {
    private String no;
    private String title;
    private String price;
    private String writer;
    private String publishedDate;
    private String delYn;
}
