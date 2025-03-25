package com.kh.app.board.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.app.board.vo.BoardVo;
import com.kh.app.page.vo.PageVo;

public class BoardDao {

	public int write(SqlSession ss, BoardVo vo) {
		return ss.insert("BoardMapper.write", vo);
	}

	public List<BoardVo> list(SqlSession ss, PageVo pvo) {
		int offset = pvo.getOffset();
		int limit = pvo.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		System.out.println("offset : " + offset);
		System.out.println("limit : " + limit);
		return ss.selectList("BoardMapper.list", null, rb);
	}

	public int getBoardCount(SqlSession ss) {
		return ss.selectOne("BoardMapper.getBoardCount");
	}

}
