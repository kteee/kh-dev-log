package com.kh.myapp03;

import jakarta.websocket.server.PathParam;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/board")
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

    @PostMapping
    public int write(@RequestBody BoardVo vo){
        int result = service.write(vo);
        return result;
    }

    @GetMapping("{no}")
    public BoardVo detail(@PathVariable String no){
        BoardVo vo = service.detail(no);
        return vo;
    }

    @DeleteMapping("{no}")
    public int delete(@PathVariable String no){
        System.out.println("no = " + no);
        int result = service.delete(no);
        return result;
    }
}
