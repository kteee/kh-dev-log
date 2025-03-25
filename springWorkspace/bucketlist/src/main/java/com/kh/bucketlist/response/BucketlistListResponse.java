package com.kh.bucketlist.response;

import com.kh.bucketlist.BucketlistVo;
import lombok.Data;

import java.util.List;

@Data
public class BucketlistListResponse {
    List<BucketlistVo> voList;
}
