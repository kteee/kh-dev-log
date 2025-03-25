package com.kh.app10.board;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/board")
@RequiredArgsConstructor
@Slf4j
@CrossOrigin
public class BoardController {

    private final BoardService service;

    @GetMapping
    public List<BoardVo> list(){
        List<BoardVo> voList = service.list();
        return voList;
    }

}
