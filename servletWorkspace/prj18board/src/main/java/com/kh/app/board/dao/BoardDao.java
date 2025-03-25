package com.kh.app.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.app.board.vo.BoardVo;
import com.kh.app.page.vo.PageVo;

public class BoardDao {

	public int write(SqlSession ss, BoardVo vo) {
		return ss.insert("BoardMapper.write" , vo);
	}

	public List<BoardVo> getBoardList(SqlSession ss , PageVo pvo, Map<String, String> searchMap ) {
		int offset = pvo.getOffset();
		int limit = pvo.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		return ss.selectList("BoardMapper.findList" , searchMap , rb);
	}

	public int getBoardCount(SqlSession ss) {
		return ss.selectOne("BoardMapper.getBoardCount");
	}

	public int delete(SqlSession ss, String[] delNoArr) {
		// DB
		return ss.delete("BoardMapper.delete",delNoArr);
	}
}
