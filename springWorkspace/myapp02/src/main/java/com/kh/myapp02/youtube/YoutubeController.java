package com.kh.myapp02.youtube;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/youtube")
@RequiredArgsConstructor
@Slf4j
@CrossOrigin
public class YoutubeController {

    private final YoutubeService service;

    @GetMapping
    public List<YoutubeVo> list(){
        List<YoutubeVo> voList = service.list();
        System.out.println("voList = " + voList);
        return voList;
    }

}
