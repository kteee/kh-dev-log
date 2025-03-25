package com.kh.semi.board.service;

import com.kh.semi.board.mapper.BoardMapper;
import com.kh.semi.board.vo.AttachmentVo;
import com.kh.semi.board.vo.BoardVo;
import com.kh.semi.category.vo.CategoryVo;
import com.kh.semi.util.page.PageVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
@Transactional
public class BoardService {
    private final BoardMapper mapper;

    // 게시글 작성
    /**
     * 파일 업로드를 처리하는 메소드이다.
     * 인서트 결과가 양수이면 성공, 음수이면 실패
     *
     * @param vo
     * @param changeNameList
     * @return 인서트결과
     */
    public int write(BoardVo vo, List<String> changeNameList) {
        int result1 = mapper.write(vo);
        int result2 = 1;
        if(changeNameList.size() > 0) {
            result2 = mapper.insertBoardAttachment(changeNameList);
        }
        // 성공의 경우
        // result1 = 1 리턴, result2 = 첨부파일의 개수만큼의 숫자 리턴 (양수)
        return result1 * result2;
    }

    public List<BoardVo> list(PageVo pvo, String searchType, String searchValue) {
        return mapper.list(pvo, searchType, searchValue);
    }

    public List<CategoryVo> cateList() {
        return mapper.cateList();
    }

    public int getBoardCnt(String searchType, String searchValue) {
        return mapper.getBoardCnt(searchType, searchValue);
    }

    public BoardVo getBoardDetail(String bno) {

        int result = mapper.increaseHit(bno);

        if(result != 1) {
            String errMsg = "BOARD > SERVICE > 조회수 증가 에러";
            log.error(errMsg);
            throw new IllegalStateException(errMsg);
        }

        return mapper.getBoardDetail(bno);
    }

    public int delete(String bno) {
        return mapper.delete(bno);
    }

    public void update(BoardVo vo, List<String> changeNameList) {
        int result1 = mapper.update(vo);

        if(result1 != 1) {
            throw new IllegalStateException("[ERROR] 첨부파일 수정 중 에러 발생");
        }

        int result2 = 1;
        if(!changeNameList.isEmpty()) {
            result2 = mapper.updateBoardAttachment(changeNameList, vo.getNo());
        }

        if(result2 < 1) {
            throw new IllegalStateException("[ERROR] 첨부파일 수정 중 에러 발생");
        }

    }

    public List<AttachmentVo> getAttachmentVoList(String bno) {
        return mapper.getAttachmentVoList(bno);
    }

    public int delAttachment(String ano) {
        return mapper.delAttachment(ano);
    }
}
