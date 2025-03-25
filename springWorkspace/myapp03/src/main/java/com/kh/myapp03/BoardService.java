package com.kh.myapp03;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
@Transactional
public class BoardService {
    private final BoardMapper mapper;

    public List<BoardVo> list() {
        return mapper.list();
    }

    public int write(BoardVo vo) {
        return mapper.write(vo);
    }

    public BoardVo detail(String no) {
        return mapper.detail(no);
    }

    public int delete(String no) {
        return mapper.delete(no);
    }
}
