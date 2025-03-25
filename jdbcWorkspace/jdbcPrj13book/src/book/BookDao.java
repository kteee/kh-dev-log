package book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static util.JDBCTemplate.*;

public class BookDao {

	public int insertBook(Connection conn, BookVo vo) throws Exception {

		String sql = """
					INSERT INTO BOOK (
					    NO
					    , TITLE
					    , GENRE
					    , AUTHOR
					    , PRICE
					    ) 
					VALUES (
					    SEQ_BOOK.NEXTVAL
					    , ?
					    , ?
					    , ?
					    , ?
					)
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getGenre());
		pstmt.setString(3, vo.getAuthor());
		pstmt.setString(4, vo.getPrice());
		int result = pstmt.executeUpdate();
		
		close(pstmt);
		
		return result;
	}

	public int deleteBook(Connection conn, String no) throws Exception {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			String sql = """
					UPDATE BOOK
					SET DEL_YN = 'Y'
					WHERE NO = ?
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int editPrice(Connection conn, BookVo vo) throws Exception {

		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			String sql = """
					UPDATE BOOK
					SET
					    PRICE = ?
					WHERE NO = ? 
					AND DEL_YN = 'N'
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPrice());
			pstmt.setString(2, vo.getNo());
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public BookVo selectBookByNo(Connection conn, String no) throws SQLException {
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BookVo vo = null; 
		
		try {
			String sql = """
						SELECT *
						FROM BOOK
						WHERE NO = ? 
						AND DEL_YN = 'N'
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				// String no = rs.getString("NO");
				String title = rs.getString("TITLE");
				String genre = rs.getString("GENRE");
				String author = rs.getString("AUTHOR");
				String price = rs.getString("PRICE");
				String rentalYn = rs.getString("RENTAL_YN");
				String publicationDate = rs.getString("PUBLICATION_DATE");
				String modifyDate = rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				
				vo = new BookVo(no, title, genre, author, price, rentalYn, publicationDate, modifyDate, delYn);
				
			}
			
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return vo;
	}

	public List<BookVo> selectBookByAll(Connection conn) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		List<BookVo> voList = new ArrayList<BookVo>();
		
		try {
			String sql = """
					SELECT NO
					    , TITLE
					    , GENRE
					    , AUTHOR
					    , PRICE
					    , CASE 
					        WHEN (RENTAL_YN = 'Y') THEN '대여가능' 
					        WHEN (RENTAL_YN = 'N') THEN '대여불가'
					        END AS 대여가능여부
					    , PUBLICATION_DATE
					    , MODIFY_DATE
					    , DEL_YN
					FROM BOOK
					WHERE DEL_YN = 'N'
					ORDER BY NO DESC
					""";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				String no = rs.getString("NO");
				String title = rs.getString("TITLE");
				String genre = rs.getString("GENRE");
				String author = rs.getString("AUTHOR");
				String price = rs.getString("PRICE");
				String rentalYn = rs.getString("대여가능여부");
				String publicationDate = rs.getString("PUBLICATION_DATE");
				String modifyDate = rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				
				BookVo vo = new BookVo(no, title, genre, author, price, rentalYn, publicationDate, modifyDate, delYn);
				
				voList.add(vo);
			}
			
		} finally {
			// close
			close(pstmt);
			close(rs);
		}
		
		// return
		return voList;
	}

	public List<BookVo> selectBookByTitle(Connection conn, String title) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		List<BookVo> voList = new ArrayList<BookVo>();
		
		try {
			String sql = """
					SELECT *
					FROM BOOK
					WHERE TITLE LIKE '%' || ? || '%' 
					AND DEL_YN = 'N'
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				String no = rs.getString("NO");
				// String title = rs.getString("TITLE");
				String genre = rs.getString("GENRE");
				String author = rs.getString("AUTHOR");
				String price = rs.getString("PRICE");
				String rentalYn = rs.getString("RENTAL_YN");
				String publicationDate = rs.getString("PUBLICATION_DATE");
				String modifyDate = rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				
				BookVo vo = new BookVo(no, title, genre, author, price, rentalYn, publicationDate, modifyDate, delYn);
				
				voList.add(vo);
			}
			
		} finally {
			// close
			close(pstmt);
			close(rs);
		}
		
		// return
		return voList;
	}

}
