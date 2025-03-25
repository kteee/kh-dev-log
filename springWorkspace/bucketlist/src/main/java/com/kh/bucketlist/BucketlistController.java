package com.kh.bucketlist;

import com.kh.bucketlist.response.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("bucketlist")
@RequiredArgsConstructor
@Slf4j
public class BucketlistController {

    private final BucketlistService service;

    @PostMapping
    public BucketlistWriteResponse write(BucketlistVo vo) {
        int result = service.write(vo);
        BucketlistWriteResponse response = new BucketlistWriteResponse();
        response.setResult(result);
        return response;
    }

    @GetMapping
    public BucketlistListResponse getList() {
        List<BucketlistVo> voList = service.getList();
        BucketlistListResponse response = new BucketlistListResponse();
        response.setVoList(voList);
        return response;
    }

    @GetMapping("{no}")
    public BucketlistDetailResponse getDetail(@PathVariable Long no) {
        BucketlistVo vo = service.getDetail(no);
        BucketlistDetailResponse response = new BucketlistDetailResponse();
        response.setVo(vo);
        return response;
    }

    @PutMapping
    public BucketlistEditResponse edit(BucketlistVo vo) {
        int result = service.edit(vo);
        BucketlistEditResponse response = new BucketlistEditResponse();
        response.setResult(result);
        return response;
    }

    @DeleteMapping
    public BucketlistDeleteResponse delete(Long no) {
        int result = service.delete(no);
        BucketlistDeleteResponse response = new BucketlistDeleteResponse();
        response.setResult(result);
        return response;
    }
}
