package com.kh.app11;

import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.ObjectMetadata;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequiredArgsConstructor
public class UploadController {

    private final AmazonS3 s3;

    // 프로퍼티즈의 cloud.aws.s3.bucket의 값 뽑아와서 bucket 변수에 담기
    @Value("${cloud.aws.s3.bucket}")
    private String bucket;

    @PostMapping("test")
    public String m01(MultipartFile f) throws IOException {

        // S3에 파일 업로드 하기
        // -> S3 객체 만들기
        // -> S3객체.putObject(버킷, 파일이름, ~~);

        String originName = f.getOriginalFilename();

        ObjectMetadata metaData = new ObjectMetadata();
        metaData.setContentType(f.getContentType());
        metaData.setContentLength(f.getSize());
        s3.putObject(bucket, originName, f.getInputStream(), metaData);

        // S3에 업로드 된 파일 URL
        String url = s3.getUrl(bucket, originName).toString();

        return url;
    }

}
