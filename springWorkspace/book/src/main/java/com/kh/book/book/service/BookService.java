package com.kh.book.book.service;

import com.kh.book.book.mapper.BookMapper;
import com.kh.book.book.vo.BookVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

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

    public List<BookVo> getBookList(Model model) {
        return mapper.getBookList(model);
    }

    public BookVo getBookDetail(String no, Model model) {
        return mapper.getBookDetail(no, model);
    }

    public int delete(String no) {
        return mapper.delete(no);
    }
}
