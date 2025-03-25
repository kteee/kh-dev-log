package com.kh.app08.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("board")
public class BoardController {

    @GetMapping("write")
    public String write() {
        return "board/write";
    }

    @PostMapping("write")
    public String write(String title, String content, MultipartFile f) throws Exception {
        System.out.println("title = " + title);
        System.out.println("content = " + content);
        System.out.println("f = " + f);
        // String 으로 받아오는 경우 파일의 이름 값을 받아옴
        // 파일 자체를 받아오려면 MultipartFile 써야함
        // 파일 보낼 때는 enctype="multipart/form-data" 써야함

        String changeName = UUID.randomUUID().toString();
        // UUID에서 랜덤값을 뽑아내면 엄청 큰 범위에서 랜덤값을 뽑아낼 수 있음
        String originalFilename = f.getOriginalFilename();
        String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
        // 확장자 (기존이름에서 확장자 떼옴)

        File target = new File("D:\\dev\\springbootWorkspace\\app08\\src\\main\\resources\\static\\" + changeName + ext);
        f.transferTo(target);
        
        return "redirect:/board/list";
    }
}
