package com.kh.app0307.member;

import jakarta.persistence.EntityManager;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class MemberRepository {

    private  final EntityManager em;

    public void join(MemberEntity memberEntity) {
        em.persist(memberEntity);
    }

    public List<MemberEntity> getMemberAll() {
        // JPQL로 데이터 SELECT 해와야 함
        // 별칭 이용해서 조회 (테이블명 쓰면 안됨 엔티티명 써야함)
        String jpql = "select m from MemberEntity m";
        // 셀렉트하면.. 타입 적어둔거로 리턴 됨..
        // 그리고.. 셀렉트한 결과를 List로 가져옴..
        return em.createQuery(jpql, MemberEntity.class)
                .getResultList();
    }


    public MemberEntity getMemberByNo(Long no) {
        // select할 엔티티와 그 엔티티의 기본키
        return em.find(MemberEntity.class, no);
    }

    public MemberEntity getMemberById(String id) {
        String jpql = "select m from MemberEntity m where id = :a";
        return em
                .createQuery(jpql, MemberEntity.class)
                .setParameter("a", id)
                .getSingleResult();
    }

    public MemberEntity getMemberByNick(String nick) {
        String jpql = "select m from MemberEntity m where nick = :a";
        return em
                .createQuery(jpql, MemberEntity.class)
                .setParameter("a", nick)
                .getSingleResult();
    }

    public void removeMemberByNo(MemberEntity memberEntity) {
        em.remove(memberEntity);
    }
}
