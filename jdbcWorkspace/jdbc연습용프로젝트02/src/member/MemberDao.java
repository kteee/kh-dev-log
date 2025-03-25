package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import static util.JDBCTemplate.*;

public class MemberDao {

	public int join(Connection conn, MemberVo vo) throws Exception {
		
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			// db
			String sql = """
					INSERT INTO MEMBER(NO, ID, PWD, NICK) VALUES(MEMBER_SEQ.NEXTVAL, ?, ?, ?)
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getNick());
			result = pstmt.executeUpdate();
			
		} finally {
			// close
			close(pstmt);
		}
		// return
		return result;
	}

	public MemberVo login(Connection conn, String id, String pwd) throws Exception {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVo vo = null;
		try {
			// db
			String sql = """
					SELECT *
					FROM MEMBER
					WHERE ID = ?
					AND PWD = ?
					AND DEL_YN = 'N' 
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String no = rs.getString("NO");
				// String id =	rs.getString("ID");
				// String pwd = rs.getString("PWD");
				String nick = rs.getString("NICK");
				String enrollDate =	rs.getString("ENROLL_DATE");
				String modifyDate =	rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				
				vo = new MemberVo(no, id, pwd, nick, enrollDate, modifyDate, delYn);
			}
			
		} finally {
			// close
			close(pstmt);
			close(rs);
		}
		// return
		return vo;
	}

	public int deleteMember(Connection conn, String no, String pwd) throws Exception {
		
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			// db
			String sql = """
					UPDATE MEMBER
					SET DEL_YN = 'Y'
					    , MODIFY_DATE = SYSDATE
					WHERE NO = ? 
					AND PWD = ? 
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.setString(2, pwd);
			result = pstmt.executeUpdate();
		} finally {
			// close 
			close(pstmt);
		}
		
		return result;
	}

	public List<MemberVo> selectMemberAll(Connection conn) throws Exception {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MemberVo> voList = new ArrayList<MemberVo>();
		
		try {
			// db
			String sql = """
					SELECT *
					FROM MEMBER
					ORDER BY NO DESC 
					""";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String no = rs.getString("NO");
				String id =	rs.getString("ID");
				String pwd = rs.getString("PWD");
				String nick = rs.getString("NICK");
				String enrollDate =	rs.getString("ENROLL_DATE");
				String modifyDate =	rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				
				MemberVo vo = new MemberVo(no, id, pwd, nick, enrollDate, modifyDate, delYn);
				voList.add(vo);
			}
		} finally {
			// close
			close(pstmt);
			close(rs);
		}
		
		return voList;
	}

	public int updatePwd(Connection conn, String no, String oldPwd, String newPwd) throws Exception {
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			// db
			String sql = """
					UPDATE MEMBER
					SET PWD = ? 
					    , MODIFY_DATE = SYSDATE
					WHERE NO = ? 
					AND PWD = ?
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newPwd);
			pstmt.setString(2, no);
			pstmt.setString(3, oldPwd);
			result = pstmt.executeUpdate();
		} finally {
			// close 
			close(pstmt);
		}
		
		return result;
	}

	public int updateNick(Connection conn, String no, String nick) throws Exception {
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			// db
			String sql = """
					UPDATE MEMBER
					SET NICK = ?
					    , MODIFY_DATE = SYSDATE
					WHERE NO = ? 
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nick);
			pstmt.setString(2, no);
			result = pstmt.executeUpdate();
		} finally {
			// close 
			close(pstmt);
		}
		
		return result;
	}

	public MemberVo selectMemberByNo(Connection conn, String no) throws Exception {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVo vo = null;
		
		try {
			// db
			String sql = """
					SELECT LPAD(NO, 3, 0) AS NO
						, ID
						, PWD
						, NICK
						, ENROLL_DATE
						, MODIFY_DATE
						, DEL_YN
					FROM MEMBER
					WHERE NO = ? 
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String memberNo = rs.getString("NO");
				String id =	rs.getString("ID");
				String pwd = rs.getString("PWD");
				String nick = rs.getString("NICK");
				String enrollDate =	rs.getString("ENROLL_DATE");
				String modifyDate =	rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				
				vo = new MemberVo(memberNo, id, pwd, nick, enrollDate, modifyDate, delYn);
			}
			
		} finally {
			// close
			close(pstmt);
			close(rs);
		}
		
		return vo;
	}
	
	public List<MemberVo> searchMemberById(Connection conn, String id) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MemberVo> voList = new ArrayList<MemberVo>();
		
		try {
			// db
			String sql = """
					SELECT *
					FROM MEMBER
					WHERE ID LIKE '%' || ? || '%' 
					ORDER BY NO DESC
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String no = rs.getString("NO");
				String userId =	rs.getString("ID");
				String pwd = rs.getString("PWD");
				String nick = rs.getString("NICK");
				String enrollDate =	rs.getString("ENROLL_DATE");
				String modifyDate =	rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				
				MemberVo vo = new MemberVo(no, userId, pwd, nick, enrollDate, modifyDate, delYn);
				voList.add(vo);
			}
		} finally {
			// close
			close(pstmt);
			close(rs);
		}
		
		return voList;
	}

	public List<MemberVo> searchMemberByNick(Connection conn, String nick) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MemberVo> voList = new ArrayList<MemberVo>();
		
		try {
			// db
			String sql = """
					SELECT *
					FROM MEMBER
					WHERE NICK LIKE '%' || ? || '%' 
					ORDER BY NO DESC
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nick);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String no = rs.getString("NO");
				String id =	rs.getString("ID");
				String pwd = rs.getString("PWD");
				String userNick = rs.getString("NICK");
				String enrollDate =	rs.getString("ENROLL_DATE");
				String modifyDate =	rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				
				MemberVo vo = new MemberVo(no, id, pwd, userNick, enrollDate, modifyDate, delYn);
				voList.add(vo);
			}
		} finally {
			// close
			close(pstmt);
			close(rs);
		}
		
		return voList;
	}

}
