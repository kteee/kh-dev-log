package com.kh.app0307.board;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/board")
@RequiredArgsConstructor
public class BoardController {

    private final BoardService boardService;

    @PostMapping
    public void write(@RequestBody BoardDto boardDto) {
        boardService.write(boardDto);
    }

    @GetMapping("{no}")
    public Board getBoardByNo(@PathVariable Long no){
        return boardService.getBoardByNo(no);
    }

    @GetMapping
    public List<Board> getBoardAll(){
        return boardService.getBoardAll();
    }

    @DeleteMapping("{no}")
    public void deleteBoard(@PathVariable Long no){
        boardService.deleteBoard(no);
    }

    @PutMapping
    public void updateBoard(@RequestBody BoardDto boardDto){
        // 트랜잭션 어노테이션이 있어야 정상적으로 동작
        boardService.updateBoard(boardDto);
    }
}
