package com.kh.app_final.gallery;

import com.amazonaws.services.s3.AmazonS3;
import com.kh.app_final.common.util.PageVo;
import com.kh.app_final.security.KhUserDetails;
import com.kh.app_final.util.FileUtil;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("api/gallery")
@RequiredArgsConstructor
@Slf4j
public class GalleryController {

    private final GalleryService galleryService;
    private final AmazonS3 s3;

    @Value("${aws.s3.bucket}")
    private String bucket;

    @GetMapping("list")
    public ResponseEntity<Map<String, Object>> findAll(@RequestParam(defaultValue = "1") int pno){
        System.out.println("GalleryController.findAll #################");
        int listCnt = galleryService.getListCount();
        int pageLimit = 5;
        int boardLimit = 10;
        PageVo pageVo = new PageVo(listCnt , pno , pageLimit , boardLimit);

        try{
            List<GalleryVo> result = galleryService.findAll(pageVo);
            Map<String, Object> map = new HashMap<>();
            map.put("galleryVoList" , result);
            map.put("pageVo", pageVo);
            System.out.println("########## map = " + map);
            return ResponseEntity.ok().body(map);
        }catch(Exception e){
            log.error(e.getMessage());
            throw new IllegalStateException("[GALLERY-LIST] FAIL ...");
        }
    }

    @PostMapping("write")
    public void write(GalleryVo vo, MultipartFile f, HttpSession session) throws IOException {

        // MemberVo loginMemberVo = (MemberVo) session.getAttribute("loginMemberVo");
        // vo.setWriterNo(loginMemberVo.getNo());
        KhUserDetails khUserDetails = (KhUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        System.out.println("khUserDetails = " + khUserDetails);
        Long writerNo = khUserDetails.getNo();
        vo.setWriterNo(writerNo);

        System.out.println("vo = " + vo);

        try{
            String url = FileUtil.uploadFileToAwsS3(f , s3 , bucket);
            vo.setFileUrl(url);
            vo.setOriginName(f.getOriginalFilename());
            galleryService.write(vo);
        }catch(Exception e){
            log.error(e.getMessage());
            throw new IllegalStateException("[GALLERY-WRITE] FAIL ...");
        }
    }

    @GetMapping("{no}")
    public GalleryVo getGalleryVo(@PathVariable String no){
        try{
            return galleryService.getGalleryVo(no);
        }catch(Exception e){
            log.error(e.getMessage());
            throw new IllegalStateException("[GALLERY-DETAIL] FAIL ...");
        }
    }

}//class