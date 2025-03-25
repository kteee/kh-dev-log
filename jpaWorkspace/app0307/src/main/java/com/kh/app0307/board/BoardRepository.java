package com.kh.app0307.board;

import jakarta.persistence.EntityManager;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class BoardRepository {

    private final EntityManager em;

    public void write(Board boardEntity) {
        em.persist(boardEntity);
    }

    public Board getBoardByNo(Long no) {
        return em.find(Board.class, no);
    }

    public List<Board> getBoardAll() {
        String jpql = "select b from Board b";
        return em.createQuery(jpql, Board.class)
                .getResultList();
    }

    public void deleteBoard(Board boardEntity) {
        em.remove(boardEntity);
    }
}
