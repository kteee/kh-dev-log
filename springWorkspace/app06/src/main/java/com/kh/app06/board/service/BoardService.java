package com.kh.app06.board.service;

import com.kh.app06.board.board.vo.BoardVo;
import com.kh.app06.board.dao.BoardDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BoardService {

    private final BoardDao dao;

    public int write(BoardVo vo) {
        return dao.write(vo);
    }

    public List<BoardVo> selectAll() {
        return dao.selectAll();
    }
}
