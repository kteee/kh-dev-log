package board;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.JDBCTemplate;

public class BoardService {
	
	public int insertBoard(BoardVo vo) throws Exception {
		
		// biz logic
		// 제목에 욕설이 포함되면 안됨
		if (vo.getTitle().contains("18")) {
			throw new Exception("제목에 욕설을 포함할 수 없습니다.");
		}
		
		Connection conn = null;
		int result = 0;
		
		try {
			
			// db 호출, 트랜잭션
			conn = JDBCTemplate.getConnection();
			BoardDao dao = new BoardDao();
			result = dao.insertBoard(conn, vo);

			// 트랜잭션 처리
			// -> 서비스에서 트랜잭션 처리 해야함 (conn을 서비스에서 준비 필요)
			if (result == 1) {
				conn.commit();
			}
			else {
				conn.rollback();
			}
			
		} finally {
			conn.close();  // conn 종료 (마지막에 무조건 실행되어야 함)
		}
		
		return result;
	}
	
	public int updateBoard(BoardVo vo) throws Exception {
		
		// biz
		// 제목에 욕설이 포함될 수 없음
		if (vo.getTitle().contains("18")) {
			throw new Exception("제목에 욕설을 포함할 수 없습니다.");
		}
		
		Connection conn = null;
		int result = 0;
		
		try {
			// dao 호출
			conn = JDBCTemplate.getConnection();
			BoardDao dao = new BoardDao();
			result = dao.updateBoard(conn, vo);
			
			// 트랜잭션 처리
			if (result == 1) {
				conn.commit();
			}
			else {
				conn.rollback();
			}
		} finally {
			conn.close();
		}
		
		return result;
	}
	
	public int deleteBoard(String num) throws Exception {
		
		// bizLogic
		// 게시글 번호는 1자 이상이어야 함
		if (num.length() < 1) {
			throw new Exception("게시글 번호를 입력해주세요.");
		}
		
		// dao 호출, 트랜잭션 처리
		Connection conn = null;
		int result = 0;
		try {
			conn = JDBCTemplate.getConnection();
			BoardDao dao = new BoardDao();
			result = dao.deleteBoard(conn, num);
			
			if (result == 1) {
				conn.commit();
			}
			else {
				conn.rollback();
			}
		} finally {
			conn.close();
		}
		
		return result;
	}
	
	public BoardVo selectBoardByNo(String num) throws Exception {
		
		// bizLogic
		// 게시글 번호는 1자 이상이어야 함
		if (num.length() < 1) {
			throw new Exception("게시글 번호를 입력해주세요.");
		}
		
		Connection conn = null;
		BoardVo vo = null;
		try {
			// dao 호출
			conn = JDBCTemplate.getConnection();
			BoardDao dao = new BoardDao();
			vo = dao.selectBoardByNo(conn, num);
			
			// 트랜잭션 처리는 생략 (select이기 때문에)
			
		} finally {
			conn.close();
		}
		
		return vo;
	}
	
	public List<BoardVo> selectBoardAll() throws Exception {
		
		Connection conn = null;
		List<BoardVo> voList = null; 
		
		try {
			// dao 호출
			conn = JDBCTemplate.getConnection();
			BoardDao dao = new BoardDao();
			voList = dao.selectBoardAll(conn);
			
			// 트랜잭션 처리 x
			
		} finally {
			conn.close();
		}
		
		return voList;
	}
	
}
