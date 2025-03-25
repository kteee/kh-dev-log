package com.kh.app0307.member;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.kh.app0307.board.Board;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "MEMBER")
@Getter
@Setter // Getter, Setter 없으면 DML에 문제 생김
@EntityListeners(AuditingEntityListener.class)  // 메인 메서드에서 @EnableJpaAuditing 설정 필요
@NoArgsConstructor
public class MemberEntity {

    @SequenceGenerator(name = "abc", sequenceName = "SEQ_MEMBER", allocationSize = 1)

    @Id
    @GeneratedValue(generator = "abc", strategy = GenerationType.SEQUENCE)
    private Long no;

    @Column(unique = true, nullable = false)
    private String id;

    @Column(nullable = false)
    private String pwd;

    private String nick;

    @CreationTimestamp  // DEFAULT SYSDATE 와 같이 생성될 때의 시간 기록
    private LocalDateTime enrollDate;

    @LastModifiedDate   // 혼자 단독으로 동작 x, @EntityListeners(AuditingEntityListener.class) + @EnableJpaAuditing 설정 필요
    private LocalDateTime modifyDate;

    // 멤버가 작성한 보드리스트 매핑을 위해 존재 (이거 칼럼으로 만들지마라,, 참조용이다,, join도 아니다,,)
    // 무슨 참조용인데 ? -> mappedBy를 이용해서 memberEntity 필드와 연결해줌
    // 제이슨으로 변환하는 과정에서 순환참조 일어남
    // Board Entity에서 @JsonIgnore 하거나 dto 처리 해줘야함 (근데 JsonIgnore은 거의 안씀)
    @OneToMany(mappedBy = "memberEntity")
    private List<Board> boardList;

    @PrePersist
    public void m01(){
        System.out.println("MEMBERENTITY PREPERSIST CALLED~~ ");
    }

    // 생성자
    // DTO를 받아 ENTITY 만들기
    public MemberEntity(MemberDto dto){
        this.no = dto.getNo();
        this.id = dto.getId();
        this.pwd = dto.getPwd();
        this.nick = dto.getNick();
//        this.enrollDate = dto.getEnrollDate();
//        this.modifyDate = dto.getModifyDate();
    }

}
