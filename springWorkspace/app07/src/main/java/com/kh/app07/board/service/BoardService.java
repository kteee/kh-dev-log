package com.kh.app07.board.service;

import com.kh.app07.board.dao.BoardDao;
import com.kh.app07.board.vo.BoardVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional // 클래스에 써주면 모든 메서드에 트랜잭션이 달린다
public class BoardService {

    private final BoardDao dao;

    public List<BoardVo> selectAll() {
        return dao.selectAll();
    }

    public int write(BoardVo vo) {
        dao.write(vo);
        int x= 1/0;
        dao.write(vo);
        return 1;
    }
}
