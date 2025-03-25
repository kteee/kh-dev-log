package member;

import java.sql.Connection;
import java.util.List;

import static util.JDBCTemplate.*;

public class MemberService {

	public int join(MemberVo vo) throws Exception {
		
		Connection conn = null; 
		int result = 0;
		try {
			// biz
			// 아이디, 비밀번호, 닉네임 > 1
			if (vo.getId().length() < 2) {
				throw new Exception ("아이디를 2글자 이상 입력해주세요.");
			}
			if (vo.getPwd().length() < 2) {
				throw new Exception ("비밀번호를 2글자 이상 입력해주세요.");
			}
			if (vo.getNick().length() < 2) {
				throw new Exception ("닉네임을 2글자 이상 입력해주세요.");
			}
			
			// dao
			conn = getConnection();
			MemberDao dao = new MemberDao();
			result = dao.join(conn, vo);
			
			// 트랜잭션
			if (result == 1) {
				commit(conn);
			} 
			else {
				rollback(conn);
			}
			
		} finally {
			// close
			close(conn);
		}
		// return
		return result;
	}

	public MemberVo login(String id, String pwd) throws Exception {
		
		Connection conn = null;
		MemberVo vo = null;
		try {
			// biz 
			// 아이디, 비밀번호 > 1
			if (id.length() < 2) {
				throw new Exception ("아이디를 2글자 이상 입력해주세요.");
			}
			if (pwd.length() < 2) {
				throw new Exception ("비밀번호를 2글자 이상 입력해주세요.");
			}
			
			// dao
			conn = getConnection();
			MemberDao dao = new MemberDao();
			vo = dao.login(conn, id, pwd);
			
		} finally {
			// close
			close(conn);
		}
		// return 
		return vo;
	}

	public int deleteMember(String no, String pwd) throws Exception {
		
		Connection conn = null;
		int result = 0;
		try {
			// biz
			// 비밀번호 > 1
			if (pwd.length() < 2) {
				throw new Exception ("비밀번호를 2글자 이상 입력해주세요.");
			}
						
			// dao
			conn = getConnection();
			MemberDao dao = new MemberDao();
			result = dao.deleteMember(conn, no, pwd);
			
			// tx
			if (result == 1) {
				commit(conn);
			} 
			else {
				rollback(conn);
			}
			
		} finally {
			// close
			close(conn);
		}
		
		return result;
	}

	public int updatePwd(String no, String oldPwd, String newPwd) throws Exception {
		Connection conn = null;
		int result = 0;
		try {
			// biz
			// 비밀번호 > 1
			if (newPwd.length() < 2) {
				throw new Exception ("비밀번호를 2글자 이상 입력해주세요.");
			}
						
			// dao
			conn = getConnection();
			MemberDao dao = new MemberDao();
			result = dao.updatePwd(conn, no, oldPwd, newPwd);
			
			// tx
			if (result == 1) {
				commit(conn);
			} 
			else {
				rollback(conn);
			}
			
		} finally {
			// close
			close(conn);
		}
		
		return result;
	}

	public int updateNick(String no, String nick) throws Exception {
		Connection conn = null;
		int result = 0;
		try {
			// biz
			// 닉네임 > 1
			if (nick.length() < 2) {
				throw new Exception ("닉네임을 2글자 이상 입력해주세요.");
			}
						
			// dao
			conn = getConnection();
			MemberDao dao = new MemberDao();
			result = dao.updateNick(conn, no, nick);
			
			// tx
			if (result == 1) {
				commit(conn);
			} 
			else {
				rollback(conn);
			}
			
		} finally {
			// close
			close(conn);
		}
		
		return result;
	}


	public MemberVo selectMemberByNo(String no) throws Exception {
		
		Connection conn = null;
		MemberVo vo = null;
		
		try {
			// biz
			// 회원번호는 1글자 이상 입력
			if (no.length() < 1) {
				throw new Exception ("회원번호를 1자 이상 입력해주세요.");
			}
			
			// dao
			conn = getConnection();
			MemberDao dao = new MemberDao();
			vo = dao.selectMemberByNo(conn, no);
			
		} finally {
			// close
			close(conn);
		}
		
		return vo;
	}
	
	public List<MemberVo> selectMemberAll() throws Exception {
		
		// biz
		// X
		
		Connection conn = null;
		List<MemberVo> voList = null;
		try {
			// dao
			conn = getConnection();
			MemberDao dao = new MemberDao();
			voList = dao.selectMemberAll(conn);
			
		} finally {
			// close
			close(conn);
		}
		return voList;
	}
	
	public List<MemberVo> searchMemberById(String id) throws Exception {
		
		Connection conn = null;
		List<MemberVo> voList = null;
		
		try {
			// biz
			// 회원 아이디는 1글자 이상 입력
			if (id.length() < 1) {
				throw new Exception ("회원 아이디를 1자 이상 입력해주세요.");
			}
			
			// dao
			conn = getConnection();
			MemberDao dao = new MemberDao();
			voList = dao.searchMemberById(conn, id);
			
		} finally {
			// close
			close(conn);
		}
		
		return voList;
	}

	public List<MemberVo> searchMemberByNick(String nick) throws Exception {
		Connection conn = null;
		List<MemberVo> voList = null;
		
		try {
			// biz
			// 회원 닉네임 1글자 이상 입력
			if (nick.length() < 1) {
				throw new Exception ("회원 아이디를 1자 이상 입력해주세요.");
			}
			
			// dao
			conn = getConnection();
			MemberDao dao = new MemberDao();
			voList = dao.searchMemberByNick(conn, nick);
			
		} finally {
			// close
			close(conn);
		}
		
		return voList;
	}
}
