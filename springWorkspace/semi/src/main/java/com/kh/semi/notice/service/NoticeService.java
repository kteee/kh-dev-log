package com.kh.semi.notice.service;

import com.kh.semi.notice.mapper.NoticeMapper;
import com.kh.semi.notice.vo.NoticeReplyVo;
import com.kh.semi.notice.vo.NoticeVo;
import com.kh.semi.util.page.PageVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class NoticeService {

    private final NoticeMapper mapper;

    public int write(NoticeVo vo) {
        return mapper.write(vo);
    }

    public List<NoticeVo> getNoticeList(PageVo pvo, String searchValue) {
        String str = "";
        if(searchValue != null && searchValue.length() > 0) {
            str = "AND TITLE LIKE '%"+ searchValue +"%'";
        }
        return mapper.getNoticeList(pvo, str);
    }

    public int getNoticeCnt() {
        return mapper.getNoticeCnt();
    }

    public NoticeVo getNoticeByNo(String no) {
        return mapper.getNoticeByNo(no);
    }

    public int delete(List<String> noticeNoList) {
        String x = String.join(",", noticeNoList);

        return mapper.delete(x);
    }

    public int edit(NoticeVo vo) {
        return mapper.edit(vo);
    }

    public int replyWrite(NoticeReplyVo vo) {
        return mapper.replyWrite(vo);
    }

    public List<NoticeReplyVo> getNoticeReplyList(String noticeNo) {
        return mapper.getNoticeReplyList(noticeNo);
    }
}
