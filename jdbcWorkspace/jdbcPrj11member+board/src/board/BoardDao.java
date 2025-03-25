package board;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BoardDao {

	public int insertBoard(Connection conn, BoardVo vo) throws Exception {
		
		// 3. DB 저장/처리
		String sql = """
				INSERT INTO BOARD (
				    NO
				    , TITLE
				    , CONTENT
				    , WRITER_NO
				) VALUES (
				    SEQ_BOARD.NEXTVAL
				    , ?
				    , ?
				    , ?
				)
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		pstmt.setString(3, vo.getWriterNo());
		int result = pstmt.executeUpdate();
		
		pstmt.close();
		
		return result;
	}
	
	public int updateTitle(Connection conn, BoardVo vo) throws Exception {
		
		// 3. DB 저장/처리
		String sql = """
				UPDATE BOARD 
				SET TITLE = ?
				    , MODIFY_DATE = SYSDATE
				WHERE NO = ? 
				AND WRITER_NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getNo());
		pstmt.setString(3, vo.getWriterNo());
		int result = pstmt.executeUpdate();
		
		pstmt.close();
		
		return result;
		
		}
	
}
