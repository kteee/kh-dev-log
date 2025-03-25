package com.kh.app.member.dao;

import org.apache.ibatis.session.SqlSession;

import com.kh.app.member.vo.MemberVo;

public class MemberDao {

	public int join(SqlSession ss, MemberVo vo) {
		
		int result = ss.insert("MemberMapper.join", vo);
		
		return result;
	}

	public MemberVo login(SqlSession ss, MemberVo vo) {
		
		MemberVo loginMemberVo = ss.selectOne("MemberMapper.login", vo);
		
		return loginMemberVo;
	}

}
