package com.kh.app.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.ibatis.session.SqlSession;

import com.kh.app.db.JDBCTemplate;
import com.kh.app.member.vo.MemberVo;

public class MemberDao {

	public int join(SqlSession ss, MemberVo vo) throws Exception {
		
		// SQL => dao
//		String sql = "INSERT INTO MEMBER(NO, ID, PWD, NICK) VALUES(SEQ_MEMBER.NEXTVAL,?,?,?)";
//		
//		PreparedStatement pstmt = conn.prepareStatement(sql);
//		pstmt.setString(1, vo.getId());
//		pstmt.setString(2, vo.getPwd());
//		pstmt.setString(3, vo.getNick());
//		int result = pstmt.executeUpdate();
		
//		// close => dao
//		JDBCTemplate.close(pstmt); // 만들어진 곳에서 처리 (close)
		
		int result = ss.insert("Member.join", vo);
		return result;
	}

	public MemberVo login(SqlSession ss, MemberVo vo) throws Exception {
		// SQL
//		String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PWD = ? AND DEL_YN = 'N'";
//		
//		PreparedStatement pstmt = conn.prepareStatement(sql);
//		pstmt.setString(1, vo.getId());
//		pstmt.setString(2, vo.getPwd());
//		ResultSet rs = pstmt.executeQuery();
//		
//		MemberVo loginMemberVo = null;
//		if(rs.next()) {
//			String no = rs.getString("NO");
//			String id = rs.getString("ID");
//			String pwd = rs.getString("PWD");
//			String nick = rs.getString("NICK");
//			String enrollDate = rs.getString("ENROLL_DATE");
//			String modifyDate = rs.getString("MODIFY_DATE");
//			String delYn = rs.getString("DEL_YN");
//			
//			loginMemberVo = new MemberVo();
//			loginMemberVo.setNo(no);
//			loginMemberVo.setId(id);
//			loginMemberVo.setPwd(pwd);
//			loginMemberVo.setNick(nick);
//			loginMemberVo.setEnrollDate(enrollDate);
//			loginMemberVo.setModifyDate(modifyDate);
//			loginMemberVo.setDelYn(delYn);
//		}
//		
//		// close
//		JDBCTemplate.close(pstmt);
//		JDBCTemplate.close(rs);
		
		// 인스턴스 생성을 자동으로 해줌
		MemberVo loginMemberVo = ss.selectOne("Member.login", vo);
				
		return loginMemberVo;
	}
}
