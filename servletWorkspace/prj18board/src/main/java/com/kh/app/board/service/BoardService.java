package com.kh.app.board.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kh.app.board.dao.BoardDao;
import com.kh.app.board.vo.BoardVo;
import com.kh.app.db.JDBCTemplate;
import com.kh.app.page.vo.PageVo;

public class BoardService {

	public int write(BoardVo vo) throws Exception {
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		BoardDao dao = new BoardDao();
		int result = dao.write(ss , vo);
		
		if(result == 1) {
			ss.commit();
		}else {
			ss.rollback();
		}
		ss.close();
		
		return result;
	}

	public List<BoardVo> getBoardList(PageVo pvo , Map<String , String> searchMap) throws Exception {
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		BoardDao dao = new BoardDao();
		List<BoardVo> voList = dao.getBoardList(ss , pvo , searchMap);
		
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

	public int delete(String[] delNoArr) throws Exception {
		// ss
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		// dao 호출
		BoardDao dao = new BoardDao();
		int result = dao.delete(ss, delNoArr);
		
		// tx
		if (result > 0) {
			ss.commit();
		}
		else {
			ss.rollback();
		}
		
		// close
		ss.close();
		
		return result;
	}

}
