package com.kh.app0304jpa.member;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Entity
public class Member{

    @SequenceGenerator(name = "abc", sequenceName = "SEQ_MEMBER", allocationSize = 1)

    @Id
    @GeneratedValue(generator = "abc", strategy = GenerationType.SEQUENCE)
    private Long no;

    @Column(length = 100, nullable = false, unique = true)
    private String id;
    private String pwd;
    private String nick;

    @Column(name = "joinDate")
    private LocalDateTime enrollDate;

    @Column(columnDefinition = " CHAR(1) DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N')) ")
    private String delYn;
    // columnDefinition 으로 직접 타입, 디폴트, 체크제약 등 설정가능
    // 근데.. 이건 오라클 기준이라.. 다른 DB라면 변경 해야함..

}
