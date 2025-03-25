package com.kh.myapp02.youtube;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class YoutubeService {

    private final YoutubeMapper mapper;

    public List<YoutubeVo> list() {
        return mapper.list();
    }
}
