package com.kh.myapp01.board.service;

import com.kh.myapp01.board.dao.BoardDao;
import com.kh.myapp01.board.vo.BoardVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {

    @Autowired
    private BoardDao dao;

    public int write(BoardVo vo) {
        // dao호출, 결과값 리턴
        return dao.write(vo);
    }
}
