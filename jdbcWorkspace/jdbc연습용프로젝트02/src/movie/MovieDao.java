package movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import static util.JDBCTemplate.*;

public class MovieDao {

	public int enrollMovie(Connection conn, MovieVo vo) throws Exception {
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			// db
			String sql = """
					INSERT INTO MOVIE (NO, TITLE, GENRE, SHOW_DATE, SEAT_COUNT) VALUES (MOVIE_SEQ.NEXTVAL, ?, ?, ?, ?)
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getGenre());
			pstmt.setString(3, vo.getShowDate());
			pstmt.setString(4, vo.getSeatCount());
			
			result = pstmt.executeUpdate();
			
		} finally {
			// close
			close(pstmt);
		}
		
		return result;
	}

	public List<MovieVo> selectMovieAll(Connection conn) throws Exception {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MovieVo> voList  = new ArrayList<MovieVo>();
		
		try {
			// db
			String sql = """
					SELECT NO
					    , TITLE
					    , GENRE
					    , TO_CHAR(TO_DATE(SHOW_DATE), 'YYYY-MM-DD') AS SHOW_DATE
					    , CASE 
					        WHEN SHOW_STATUS = '1' THEN '상영예정'
					        WHEN SHOW_STATUS = '2' THEN '상영종료'
					        END AS SHOW_STATUS
					    , SEAT_COUNT
					    , RESERVATION_COUNT
					    , ENROLL_DATE
					    , MODIFY_DATE
					    , DEL_YN 
					    , CASE 
					        WHEN SHOW_STATUS = '1' AND SEAT_COUNT > RESERVATION_COUNT THEN '예매가능'
					        ELSE '예매불가'
					        END AS "RESERVABLE_YN"
					FROM MOVIE
					WHERE DEL_YN = 'N'
					ORDER BY SHOW_STATUS
					""";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String no = rs.getString("NO");
				String title = rs.getString("TITLE");
				String genre = rs.getString("GENRE");
				String showDate = rs.getString("SHOW_DATE");
				String showStatus = rs.getString("SHOW_STATUS");
				String seatCount = rs.getString("SEAT_COUNT");
				String reservationCount = rs.getString("RESERVATION_COUNT");
				String enrollDate = rs.getString("ENROLL_DATE");
				String modifyDate = rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				String reservableYn = rs.getString("RESERVABLE_YN");
				String remainSeat = String.valueOf(Integer.parseInt(seatCount) - Integer.parseInt(reservationCount));
				
				MovieVo vo = new MovieVo(no, title, genre, showDate, showStatus, seatCount, reservationCount, enrollDate, modifyDate, delYn, remainSeat, reservableYn);
				
				voList.add(vo);
			}
			
		} finally {
			// close
			close(pstmt);
			close(rs);
		}
		
		return voList;
	}

	public MovieVo selectMovieByNo(Connection conn, String no) throws Exception {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		MovieVo vo = null;
		
		try {
			// db
			String sql = """
					SELECT NO
					    , TITLE
					    , GENRE
					    , TO_CHAR(TO_DATE(SHOW_DATE), 'YYYY-MM-DD') AS SHOW_DATE
					    , CASE 
					        WHEN SHOW_STATUS = '1' THEN '상영예정'
					        WHEN SHOW_STATUS = '2' THEN '상영종료'
					        END AS SHOW_STATUS
					    , SEAT_COUNT
					    , RESERVATION_COUNT
					    , ENROLL_DATE
					    , MODIFY_DATE
					    , DEL_YN 
					    , CASE 
					        WHEN SHOW_STATUS = '1' AND SEAT_COUNT > RESERVATION_COUNT THEN '예매가능'
					        ELSE '예매불가'
					        END AS "RESERVABLE_YN"
					FROM MOVIE
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
				String showDate = rs.getString("SHOW_DATE");
				String showStatus = rs.getString("SHOW_STATUS");
				String seatCount = rs.getString("SEAT_COUNT");
				String reservationCount = rs.getString("RESERVATION_COUNT");
				String enrollDate = rs.getString("ENROLL_DATE");
				String modifyDate = rs.getString("MODIFY_DATE");
				String delYn = rs.getString("DEL_YN");
				String reservableYn = rs.getString("RESERVABLE_YN");
				String remainSeat = String.valueOf(Integer.parseInt(seatCount) - Integer.parseInt(reservationCount));
				
				vo = new MovieVo(no, title, genre, showDate, showStatus, seatCount, reservationCount, enrollDate, modifyDate, delYn, remainSeat, reservableYn);
			}
			
		} finally {
			// close
			close(pstmt);
			close(rs);
		}
		
		return vo;
	}
	

	public int reservation (Connection conn, String no) throws Exception {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			// db
			String sql = """
					UPDATE MOVIE
					SET RESERVATION_COUNT = RESERVATION_COUNT + 1
					WHERE NO = ?
					AND SHOW_STATUS = '1'
					AND SEAT_COUNT > RESERVATION_COUNT
					AND DEL_YN = 'N'
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			result = pstmt.executeUpdate();
			
		} finally {
			// close
			close(pstmt);
		}
		
		return result;
	}

	public int updateShowStatus(Connection conn, String no, String status) throws Exception {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			// db
			String sql = """
					UPDATE MOVIE
					SET SHOW_STATUS = ?
					    , MODIFY_DATE = SYSDATE
					WHERE NO = ?
					AND DEL_YN = 'N'
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, status);
			pstmt.setString(2, no);
			result = pstmt.executeUpdate();
			
		} finally {
			// close
			close(pstmt);
		}
		
		return result;
	}

	public int deleteMovie(Connection conn, String no) throws Exception {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			// db
			String sql = """
					UPDATE MOVIE
					SET DEL_YN = 'Y'
					    , MODIFY_DATE = SYSDATE
					WHERE NO = ?
					AND DEL_YN = 'N'
					""";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			result = pstmt.executeUpdate();
			
		} finally {
			// close
			close(pstmt);
		}
		
		return result;
	}

}
