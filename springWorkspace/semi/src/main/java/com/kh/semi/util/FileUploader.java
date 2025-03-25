package com.kh.semi.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class FileUploader {

    public static String save(MultipartFile f, String path) throws IOException {
        if(!f.isEmpty()) {

            // 파일 받아오기
            // => 파리미터에 MultipartFile 추가

            // 파일 이름 변경
            String randomStr = UUID.randomUUID().toString();
            String ext = f.getOriginalFilename().substring(f.getOriginalFilename().lastIndexOf("."));
            String changeName = randomStr + ext;

            // 파일을 서버에 저장 (저장경로, 파일저장)
            File targetFile = new File(path + changeName);
            f.transferTo(targetFile);

            return changeName;
        }
        return null;
    }
}
