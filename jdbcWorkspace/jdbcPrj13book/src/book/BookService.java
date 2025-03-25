package book;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import static util.JDBCTemplate.*;

public class BookService {

	public int insertBook(BookVo vo) throws Exception {
		
		Connection conn = null;
		int result = 0;
		
		try {
			// biz
			// 제목은 1글자 이상
			// 가격은 100원 이상
			if (vo.getTitle().length() < 1) {
				throw new Exception("제목을 1글자 이상 입력해주세요.");
			}
			if (Integer.parseInt(vo.getPrice()) < 100) {
				throw new Exception("가격을 100원 이상 입력해주세요.");
			}
	
			// dao 
			conn = getConnection();
			BookDao dao = new BookDao();
			result = dao.insertBook(conn, vo);
			
			// tx
			if (result == 1) {
				commit(conn);
			}
			else {
				rollback(conn);
			}
	} finally {
		close(conn);
	}	
	
	return result;
	
	}

	public int deleteBook(String no) throws Exception {
		
		// biz
		// X
		
		Connection conn = null;
		int result = 0;
		
		try {
			// dao
			conn = getConnection();
			BookDao dao = new BookDao();
			result = dao.deleteBook(conn, no);
			
			// tx
			if (result == 1) {
				commit(conn);
			}
			else {
				rollback(conn);
			}
		} finally {
			close(conn);
		}
		// return
		return result;
	}

	public int editPrice(BookVo vo) throws Exception {
		
		// biz
		// 가격은 100원 이상이어야 함
		if (Integer.parseInt(vo.getPrice()) < 100) {
			throw new Exception("가격을 100원 이상 입력해주세요.");
		}
		
		Connection conn = null;
		int result = 0;
		try {
			// dao
			conn = getConnection();
			BookDao dao = new BookDao();
			result = dao.editPrice(conn, vo);
			
			// 트랜잭션 처리
			if (result == 1) {
				commit(conn);
			}
			else {
				rollback(conn);
			}
		} finally {
			close(conn);
		}
		
		return result;
	}

	public BookVo selectBookByNo(String no) throws Exception {

		// biz
		// x
		
		Connection conn = null;
		BookVo vo = null;
		
		try {
			// dao
			conn = getConnection();
			BookDao dao = new BookDao();
			vo = dao.selectBookByNo(conn, no);
			
		} finally {
			close(conn);
		}
		
		return vo;
	}

	public List<BookVo> selectBookByAll() throws Exception {

		// biz
		// x
		Connection conn = null;
		List<BookVo> voList = null;
		try {
			// dao
			conn = getConnection();
			BookDao dao = new BookDao();
			voList = dao.selectBookByAll(conn);
			
		} finally {
			// close
			close(conn);
		}
		
		// return
		return voList;
	}

	public List<BookVo> selectBookByTitle(String title) throws Exception {
		
		Connection conn = null;
		List<BookVo> voList = null;
		try {
			// dao
			conn = getConnection();
			BookDao dao = new BookDao();
			voList = dao.selectBookByTitle(conn, title);
			
		} finally {
			// close
			close(conn);
		}
		
		// return
		return voList;
	}
}
