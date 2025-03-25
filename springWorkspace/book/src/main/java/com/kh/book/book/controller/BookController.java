package com.kh.book.book.controller;

import com.kh.book.book.service.BookService;
import com.kh.book.book.vo.BookVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("book")
@Slf4j
// @CrossOrigin 모든 오리진 허용
// @CrossOrigin(value = "http://192.168.40.37:5501")
@CrossOrigin
public class BookController {

    private final BookService service;

    @GetMapping("write")
    public String write() {
        return "book/write";
    }

    @PostMapping("write")
    @ResponseBody
    public int write(@RequestBody BookVo vo) {

        int result = service.write(vo);

        if(result != 1) {
            throw new RuntimeException("ERROR");
        }
        return result;
    }

    @GetMapping("list")
    @ResponseBody
    public List<BookVo> getBookList(Model model){
        List<BookVo> voList = service.getBookList(model);
        if(voList == null) {
            throw new RuntimeException("ERROR");
        }
        model.addAttribute("voList", voList);
        return voList;
    }

    @GetMapping("detail")
    @ResponseBody
    public BookVo getBookDetail(String no, Model model) {
        BookVo vo = service.getBookDetail(no, model);
        if(vo == null) {
            throw new RuntimeException("ERROR");
        }
        model.addAttribute("vo", vo);
        return vo;
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
