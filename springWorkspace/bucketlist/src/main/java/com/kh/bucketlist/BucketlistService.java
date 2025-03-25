package com.kh.bucketlist;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class BucketlistService {

    private final BucketlistMapper mapper;

    public int write(BucketlistVo vo) {
        return mapper.write(vo);
    }

    public List<BucketlistVo> getList() {
        return mapper.getList();
    }

    public BucketlistVo getDetail(Long no) {
        return mapper.getDetail(no);
    }

    public int edit(BucketlistVo vo) {
        return mapper.edit(vo);
    }

    public int delete(Long no) {
        return mapper.delete(no);
    }
}
