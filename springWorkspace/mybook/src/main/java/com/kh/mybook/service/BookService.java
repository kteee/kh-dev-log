package com.kh.mybook.service;

import com.kh.mybook.mapper.BookMapper;
import com.kh.mybook.vo.BookVo;
import jdk.jfr.Label;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
@Transactional
public class BookService {

    private final BookMapper mapper;

    public int write(BookVo vo) {
        return mapper.write(vo);
    }

    public List<BookVo> getBookList() {
        return mapper.getBookList();
    }

    public BookVo getBookDetail(String no) {
        return mapper.getBookDetail(no);
    }

    public int edit(BookVo vo) {
        return mapper.edit(vo);
    }

    public int delete(String no) {
        return mapper.delete(no);
    }
}
