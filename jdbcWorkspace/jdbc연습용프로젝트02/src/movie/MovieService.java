package movie;

import java.sql.Connection;
import java.util.List;

import static util.JDBCTemplate.*;

public class MovieService {

	public int enrollMovie(MovieVo vo) throws Exception {
		
		Connection conn = null;
		int result = 0;
		
		try {
			// biz
			// 제목, 장르 1자 이상 입력
			// 상영일자는 숫자 8개만 입력
			// 좌석수는 숫자로, 0이상 입력
			if (vo.getTitle().length() < 1) {
				throw new Exception("제목을 입력해주세요.");
			}
			if (vo.getGenre().length() < 1) {
				throw new Exception("장르을 입력해주세요.");
			}
			if (Integer.parseInt(vo.getShowDate()) < 0 || vo.getShowDate().length() != 8) {
				throw new Exception("상영일자를 숫자 8자리로 입력해주세요.");
			}
			if (Integer.parseInt(vo.getSeatCount()) < 0) {
				throw new Exception("좌석 수를 0 이상 입력해주세요.");
			}
			
			// dao
			conn = getConnection();
			MovieDao dao = new MovieDao();
			result = dao.enrollMovie(conn, vo);
			
			// tx
			if (result == 1) {
				commit(conn);
			} else {
				rollback(conn);
			}
			
		} finally {
			// close
			close(conn);
		}
		
		return result;
	}

	public List<MovieVo> selectMovieAll() throws Exception {
		
		Connection conn = null;
		List<MovieVo> voList = null;
		
		try {
			// dao
			conn = getConnection(); 
			MovieDao dao = new MovieDao();
			voList = dao.selectMovieAll(conn);
			
		} finally {
			// close
			close(conn);
		}
		return voList;
	}

	public MovieVo selectMovieByNo(String no) throws Exception {
		
		Connection conn = null;
		MovieVo vo = null;
		
		try {
			// biz
			// 영화 번호는 1자 이상 입력
			if (no.length() < 1) {
				throw new Exception("번호를 1자 이상 입력해주세요.");
			}
			
			// dao
			conn = getConnection();
			MovieDao dao = new MovieDao();
			vo = dao.selectMovieByNo(conn, no);
			
		} finally {
			// close
			close(conn);
		}
		return vo;
	}

	public int reservation(String no) throws Exception {
		
		Connection conn = null;
		int result = 0;
		
		try {
			// biz
			// 영화 번호는 1자 이상 입력
			if (no.length() < 1) {
				throw new Exception("번호를 1자 이상 입력해주세요.");
			}
			
			// dao
			conn = getConnection();
			MovieDao dao = new MovieDao();
			result = dao.reservation(conn, no);
			
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

	public int updateShowStatus(String no, String status) throws Exception {
		
		Connection conn = null;
		int result = 0;
		
		try {
			// biz
			// 영화 번호는 1자 이상 입력
			// status는 1 또는 2만 입력
			if (no.length() < 1) {
				throw new Exception("번호를 1자 이상 입력해주세요.");
			}
			if ( !( status.equals("1") || status.equals("2") ) ) {
				throw new Exception("상영상태를 1 또는 2로 입력해주세요.");
			}
			
			// dao
			conn = getConnection();
			MovieDao dao = new MovieDao();
			result = dao.updateShowStatus(conn, no, status);
			
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

	public int deleteMovie(String no) throws Exception {
		
		Connection conn = null;
		int result = 0;
		
		try {
			// biz
			// 영화 번호는 1자 이상 입력
			if (no.length() < 1) {
				throw new Exception("번호를 1자 이상 입력해주세요.");
			}
	
			// dao
			conn = getConnection();
			MovieDao dao = new MovieDao();
			result = dao.deleteMovie(conn, no);
			
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


}
