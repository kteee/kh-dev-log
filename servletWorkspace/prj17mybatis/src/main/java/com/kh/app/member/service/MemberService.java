package com.kh.app.member.service;

import org.apache.ibatis.session.SqlSession;

import com.kh.app.db.JDBCTemplate;
import com.kh.app.member.dao.MemberDao;
import com.kh.app.member.vo.MemberVo;

public class MemberService {

	public int join(MemberVo vo) throws Exception {
		// conn
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		// dao호출
		MemberDao dao = new MemberDao();
		int result = dao.join(ss, vo);
		
		// tx
		if(result == 1) {
			ss.commit();
		}
		else {
			ss.rollback();
		}
		
		// close
		ss.close();
		
		return result;
	}

	public MemberVo login(MemberVo vo) throws Exception {

		// ss
		SqlSession ss = JDBCTemplate.getSqlSession();
		
		// dao 호출
		MemberDao dao = new MemberDao();
		MemberVo loginMemberVo = dao.login(ss, vo);
		
		// close
		ss.close();
		
		return loginMemberVo;
	}



}
