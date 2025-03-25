package com.kh.app0304jpa.board;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/board")
@RequiredArgsConstructor
public class BoardController {

    private final BoardService boardService;

    @PostMapping("insert")
    public void insert(@RequestBody BoardDto dto){
        boardService.insert(dto);
    }

    @GetMapping("{no}")
    public BoardEntity getBoardByNo(@PathVariable Long no) {
        return boardService.getBoardByNo(no);
    }

    @GetMapping
    public List<BoardEntity> m01(){
        return boardService.getBoardAll();
    }

    @PostMapping("{no}")
    public void updateBoard(@PathVariable Long no, String title, String content){
        boardService.updateBoard(no, title, content);
    }

    @PostMapping("delete/{no}")
    public void deleteBoard(@PathVariable Long no){
        boardService.deleteBoard((no));
    }



}
