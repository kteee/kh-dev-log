package board;

import java.sql.Connection;

import db.JDBCTemplate;

public class BoardService {
	
	public int insertBoard(BoardVo vo) throws Exception {
		
		// 2. biz (비즈니스 로직) 처리
		// 제목 또는 내용에 욕설이 포함되어 있으면 안됨
		if (vo.getTitle().contains("18") || vo.getContent().contains("18")) {
			throw new Exception("부적절한 제목 또는 내용입니다.");
		}
		
		Connection conn = null;
		int result = 0;
		
		try {
			// dao 호출
			conn = JDBCTemplate.getConnection();
			BoardDao dao = new BoardDao();
			result = dao.insertBoard(conn, vo);
			
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
	
	public int updateTitle(BoardVo vo) throws Exception {
		
		// 2. biz (비즈니스 로직) 처리
		// 제목에 욕설이 포함되어 있으면 안됨
		if (vo.getTitle().contains("18")) {
			throw new Exception("부적절한 제목입니다.");
		}
		
		Connection conn = null; 
		int result = 0; 
		
		try {
			// dao 호출
			conn = JDBCTemplate.getConnection();
			BoardDao dao = new BoardDao();
			result = dao.updateTitle(conn, vo);
			
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
}
