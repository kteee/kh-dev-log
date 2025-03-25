package com.kh.app.member.service;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;

import com.kh.app.db.JDBCTemplate;
import com.kh.app.member.dao.MemberDao;
import com.kh.app.member.vo.MemberVo;

public class MemberService {

	public int join(MemberVo vo) throws Exception {
		
		// conn => service
		// Connection conn = JDBCTemplate.getConnection();
		
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		// dao 호출
		MemberDao dao = new MemberDao();
		int result = dao.join(ss, vo);
		
		// tx => service
		if(result == 1) {
			// conn.commit();
			ss.commit();
		}
		else {
			// conn.rollback();
			ss.rollback();
		}
		
		// JDBCTemplate.close(conn);
		ss.close();
		
		return result;
	}
	
	public MemberVo login(MemberVo vo) throws Exception{
		// conn
		// Connection conn = JDBCTemplate.getConnection();
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		// dao 호출
		MemberDao dao = new MemberDao();
		MemberVo loginMemberVo = dao.login(ss, vo);
		
		// tx
		// X (SELECT는 COMMIT, ROLLBACK 해당없음)
		
		// close
		// JDBCTemplate.close(conn);
		ss.close();
		
		return loginMemberVo;
	}
}
