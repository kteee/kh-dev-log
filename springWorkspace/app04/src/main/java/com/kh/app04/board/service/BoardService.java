package com.kh.app04.board.service;

import com.kh.app04.board.dao.BoardDao;
import com.kh.app04.board.vo.BoardVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {

    @Autowired
    private BoardDao dao;

    public int insert(BoardVo vo) {
        // conn 준비 (sql session) => 자동으로 됨

        // dao 호출
        //nt result = dao.insert(vo);
        // conn 전달도 알아서 해줌

        // tx
        // tx 도 알아서 해줌 (autocommit)
        // 롤백처리 : @Transactional

        // close
        // spring이 알아서 ss 만들고 close까지 해줌

        // result
        //return result;

         // 한줄로 쓰기
        return dao.insert(vo);
    }
}
