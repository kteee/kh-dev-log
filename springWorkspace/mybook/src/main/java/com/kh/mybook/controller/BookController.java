package com.kh.mybook.controller;

import com.kh.mybook.service.BookService;
import com.kh.mybook.vo.BookVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class BookController {

    private final BookService service;

    @PostMapping("write")
    @ResponseBody
    public int write(BookVo vo) {
        int result = service.write(vo);
        if (result != 1) {
            throw new RuntimeException("ERROR");
        }
        return result;
    }

    @GetMapping("list")
    @ResponseBody
    public List<BookVo> getBookList() {
        List<BookVo> voList = service.getBookList();
        if (voList == null) {
            throw new RuntimeException("ERROR");
        }
        return voList;
    }

    @GetMapping("detail")
    @ResponseBody
    public BookVo detail(String no) {
        BookVo vo = service.getBookDetail(no);
        if(vo == null) {
            throw new RuntimeException("ERROR");
        }
        return vo;
    }

    @PostMapping("edit")
    @ResponseBody
    public int delete(BookVo vo) {
        int result = service.edit(vo);
        if(result != 1) {
            throw new RuntimeException("ERROR");
        }
        return result;
    }

    @GetMapping("delete")
    @ResponseBody
    public int delete(String no) {
        int result = service.delete(no);
        if(result != 1) {
            throw new RuntimeException("ERROR");
        }
        return result;
    }
}
