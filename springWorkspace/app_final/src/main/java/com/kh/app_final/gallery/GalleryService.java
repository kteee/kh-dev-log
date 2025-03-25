package com.kh.app_final.gallery;

import com.kh.app_final.common.util.PageVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class GalleryService {

    private final GalleryMapper galleryMapper;

    public List<GalleryVo> findAll(PageVo pageVo) {
        int limit = pageVo.getBoardLimit();
        int offset = pageVo.getOffset();
        return galleryMapper.findAll(offset, limit);
    }

    public void write(GalleryVo vo) {
        galleryMapper.insert(vo);
    }

    public GalleryVo getGalleryVo(String no) {
        return galleryMapper.findByNo(no);
    }

    public int getListCount() {
        return galleryMapper.getListCount();
    }

    public void delete(Long no) {
        galleryMapper.delete(no);
    }
}