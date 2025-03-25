package com.kh.app06.board.dao;

import com.kh.app06.board.board.vo.BoardVo;
import com.kh.app06.board.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class BoardDao {

    private final BoardMapper mapper;

    public int write(BoardVo vo) {
        return mapper.write(vo);
    }

    public List<BoardVo> selectAll() {
        return mapper.selectAll();
    }
}
