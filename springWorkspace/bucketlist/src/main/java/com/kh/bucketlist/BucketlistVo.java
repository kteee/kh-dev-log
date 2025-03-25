package com.kh.bucketlist;

import lombok.Data;

@Data
public class BucketlistVo {
    private Long no;
    private String name;
    private String category;
    private Integer priority;
    private String completeDate;
    private String enrollDate;
    private String delYn;
}
