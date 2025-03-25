package com.kh.app0307.board;

import com.kh.app0307.member.MemberEntity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@SequenceGenerator(name = "abc", sequenceName = "SEQ_BOARD", allocationSize = 1)
@Setter
@Getter
@NoArgsConstructor
public class Board {

    @GeneratedValue(generator = "abc", strategy = GenerationType.SEQUENCE)
    @Id
    private Long no;
    private String title;
    private String content;
    private LocalDateTime enrollDate;

    @ManyToOne
    @JoinColumn(name = "writerNo" , nullable = false)
    private MemberEntity memberEntity;

    public Board(BoardDto dto){
        this.title = dto.getTitle();
        this.content = dto.getContent();
    }
}
