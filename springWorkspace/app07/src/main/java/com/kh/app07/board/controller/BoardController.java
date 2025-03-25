package com.kh.app07.board.controller;

import com.kh.app07.board.service.BoardService;
import com.kh.app07.board.vo.BoardVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("board")
@RequiredArgsConstructor
public class BoardController {

    private final BoardService service;

    // 게시글 목록 조회
    @GetMapping("list")
    public String list(Model model) {
        List<BoardVo> voList = service.selectAll();
        model.addAttribute("voList", voList);
        return "board/list";
    }

    // 게시글 작성
    @PostMapping("write")
    public String write(BoardVo vo) {
        int result = service.write(vo);
        if(result == 1) {
            return "redirect:/board/list";
        }
        else {
            return "redirect:/error";
        }
    }

}
