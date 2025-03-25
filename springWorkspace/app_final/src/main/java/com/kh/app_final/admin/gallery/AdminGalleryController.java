package com.kh.app_final.admin.gallery;

import com.kh.app_final.gallery.GalleryService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.StreamingHttpOutputMessage;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/admin/gallery")
@RequiredArgsConstructor
@Slf4j
public class AdminGalleryController {

    private final GalleryService galleryService;

    @PostMapping("delete")
    public void delete(@RequestBody GalleryDeleteRequestVo vo){
        try{
            galleryService.delete(vo.getNo());
        }catch(Exception e){
            log.error(e.getMessage());
            throw new IllegalStateException(e.getMessage());
        }
    }

}//class
