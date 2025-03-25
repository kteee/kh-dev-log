package com.kh.app.board.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kh.app.board.dao.BoardDao;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.db.JDBCTemplate;
import com.kh.app.page.vo.PageVo;

public class BoardService {

	public int write(BoardVo vo) throws Exception {
		// ss
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		// dao
		BoardDao dao = new BoardDao();
		int result = dao.write(ss, vo);
		
		// tx
		if (result == 1) {
			ss.commit();
		}
		else {
			ss.rollback();
		}
	
		// close
		ss.close();
		
		return result;
	}

	public List<BoardVo> list(PageVo pvo) throws Exception {
		
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		BoardDao dao = new BoardDao();
		List<BoardVo> voList = dao.list(ss , pvo );
		
		ss.close();
		
		return voList;
	}

	public int getBoardCount() throws Exception {
		
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		BoardDao dao = new BoardDao();
		int cnt = dao.getBoardCount(ss);
		
		ss.close();
		
		return cnt;
	}

	public int delete(String[] delArr) {
		// TODO Auto-generated method stub
		return 0;
	}

}
