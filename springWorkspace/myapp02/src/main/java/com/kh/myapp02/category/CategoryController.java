package com.kh.myapp02.category;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/youtube/category")
@RequiredArgsConstructor
@Slf4j
@CrossOrigin
public class CategoryController {

    private final CategoryService service;

    @GetMapping
    public List<CategoryVo> list(){
        List<CategoryVo> voList = service.list();
        return voList;
    }

}
