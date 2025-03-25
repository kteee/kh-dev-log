package com.kh.app0121aop;

import lombok.Builder;

// @Builder
public class BoardVo {
// 클래스는 public , default 만

    private String no;
    private String title;
    private String content;

    public void setNo(String no) {
        this.no = no;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    private BoardVo(){

    }

    public static TempVo createTempVo(){
        return new BoardVo.TempVo();
    }

    static class TempVo{

        private String a;
        private String b;
        private String c;

        public TempVo(){

        }

        public TempVo a(String a){
            this.a = a;
            return this;
        }

        public TempVo b(String b){
            this.b = b;
            return this;
        }

        public TempVo c(String c){
            this.c = c;
            return this;
        }

        public BoardVo createBoardVo(){
            BoardVo boardVo = new BoardVo();
            boardVo.setNo(this.a);
            boardVo.setTitle(this.b);
            boardVo.setContent(this.c);
            return boardVo;
        }
    }

}
