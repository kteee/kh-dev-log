package com.kh.app0307.member;

import com.kh.app0307.board.BoardDto;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
public class MemberDto {

//    public MemberDto(){
//    }

    private Long no;
    private String id;
    private String pwd;
    private String nick;
    private LocalDateTime enrollDate;
    private LocalDateTime modifyDate;
    private List<BoardDto> boardDtoList;

    public MemberDto(MemberEntity entity){
        this.no = entity.getNo();
        this.id = entity.getId();
        this.pwd = entity.getPwd();
        this.nick = entity.getNick();
        this.enrollDate = entity.getEnrollDate();
        this.modifyDate = entity.getModifyDate();

        this.boardDtoList = entity.getBoardList().stream().map(BoardDto::new).toList();
        // 전달받은 걸 그대로 실행할 땐... 위 처럼 간소화 가능...
    }
}
