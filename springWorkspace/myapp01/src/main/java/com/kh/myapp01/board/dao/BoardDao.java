package com.kh.myapp01.board.dao;

import com.kh.myapp01.board.mapper.BoardMapper;
import com.kh.myapp01.board.vo.BoardVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {

    @Autowired
    private BoardMapper mapper;

    public int write(BoardVo vo) {
        // sql
        return mapper.write(vo);
    }
}
