package board;

//static 변수 import 하기
import static util.KhUtil.sc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.JDBCTemplate;
import main.Main;

public class BoardController {

	// 메뉴
	public void menu() throws Exception {
		System.out.println("---- MENU ----");
		System.out.println("1. 게시글 작성");
		System.out.println("2. 게시글 제목 수정");
		System.out.println("3. 게시글 내용 수정");
		System.out.println("4. 게시글 삭제");
		System.out.println("5. 게시글 목록 조회");
		System.out.println("6. 게시글 상세 조회");
		System.out.println("7. 게시글 검색 (제목)");
		System.out.println("8. 게시글 검색 (내용)");
		System.out.println("9. 게시글 검색 (작성자)");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
	switch(num) {
		case "1" : insertBoard(); break;
		case "2" : updateTitle(); break;
		case "3" : updateContent(); break;
		case "4" : deleteBoard(); break;
		case "5" : selectBoardList(); break;
		case "6" : selectBoardOneByNo(); break;
		case "7" : searchBoardByTitle(); break;
		case "8" : searchBoardByContent(); break;
		case "9" : searchBoardByWriter(); break;
		default : System.out.println("잘못 입력하였습니다.");
		}
	}
	
	// 게시글 작성
	public void insertBoard() {
		try {
			System.out.println("---- 게시글 작성 ----");
			
			// 로그인된 멤버만 게시글 작성 가능
			if (Main.loginMember == null) {
				System.out.println("로그인 먼저 해주세요.");
				return;
			}
			
			// 1. data 받기/처리
			System.out.print("제목 : ");
			String title = sc.nextLine();
			System.out.print("내용 : ");
			String content = sc.nextLine();
			String writerNo = Main.loginMember.getNo();
			
			BoardVo vo = new BoardVo(null, title, content, writerNo, null, null, null, null, null);
			
			BoardService service = new BoardService();
			int result = service.insertBoard(vo);
			
			if (result == 1) {
				System.out.println("게시글 작성 완료!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
			
		} catch (Exception e) {
			System.out.println("게시글 작성 실패..");
			e.printStackTrace();
		}
	}
	
	// 게시글 제목 수정
	public void updateTitle() {
		try {
			System.out.println("---- 게시글 제목 수정 ----");
			
			// 1. data 받기/처리
			System.out.print("수정할 게시글 번호 : ");
			String no = sc.nextLine();
			System.out.print("수정할 제목 : ");
			String title = sc.nextLine();
			String writerNo = Main.loginMember.getNo();
	
			BoardVo vo = new BoardVo(no, title, null, writerNo, null, null, null, null, null);
			
			BoardService service = new BoardService();
			int result = service.updateTitle(vo);
					
			if (result == 1) {
				System.out.println("게시글 제목 수정 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("게시글 제목 수정 실패..");
			e.printStackTrace();
		}
		
	}
	// 게시글 내용 수정
	public void updateContent() throws Exception {
		System.out.println("---- 게시글 내용 수정 ----");
		
		// 1. data 받기/처리
		System.out.print("수정할 게시글 번호 : ");
		String no = sc.nextLine();
		System.out.print("수정할 내용 : ");
		String content = sc.nextLine();
		String writerNo = Main.loginMember.getNo();

		// 2. biz (비즈니스 로직) 처리
		// 내용에 욕설이 포함되어 있으면 안됨
		if (content.contains("18")) {
			throw new Exception("부적절한 내용입니다.");
		}
				
		// 3. DB 저장/처리
		Connection conn = JDBCTemplate.getConnection();
		
		String sql = """
				UPDATE BOARD 
				SET CONTENT = ?
				    , MODIFY_DATE = SYSDATE
				WHERE NO = ? 
				AND WRITER_NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, content);
		pstmt.setString(2, no);
		pstmt.setString(3, writerNo);
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("게시글 내용 수정 성공!");
		}
		else {
			System.out.println("게시글 내용 수정 실패..");
		}
		
	}
	// 게시글 삭제
	public void deleteBoard() throws Exception {
		System.out.println("---- 게시글 삭제 ----");
		
		// 1. data 받기/처리
		System.out.print("삭제할 게시글 번호 : ");
		String no = sc.nextLine();
		String writerNo = Main.loginMember.getNo();
		
		// 2. biz (비즈니스 로직) 처리
		// X
		
		// 3. DB 저장/처리
		Connection conn = JDBCTemplate.getConnection();
		
		String sql = """
				UPDATE BOARD
				SET DEL_YN = 'Y'
				    , MODIFY_DATE = SYSDATE
				WHERE NO = ? 
				AND WRITER_NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		pstmt.setString(2, writerNo);
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("게시글 삭제 성공!");
		}
		else {
			System.out.println("게시글 삭제 실패..");
		}
	}
	
	// 게시글 조회수 증가
	public int increaseHit(Connection conn, String no) throws Exception {
		
		// 1. data 받기/처리
		// X
		
		// 2. biz (비즈니스 로직) 처리
		// X
		
		// 3. DB 저장/처리
		String sql = """
				UPDATE BOARD
				SET HIT = HIT + 1
				WHERE NO = ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		int result = pstmt.executeUpdate();
		return result;
		
	}
	
	// 게시글 목록 조회
	public void selectBoardList() throws Exception {
		System.out.println("---- 게시글 목록 조회 ----");
		System.out.println("번호 / 제목 / 작성자 / 조회수");
		// 1. data 받기/처리
		// X
		
		// 2. biz (비즈니스 로직) 처리
		// X
		
		// 3. DB 저장/처리
		Connection conn = JDBCTemplate.getConnection();
		
		String sql = """
				SELECT B.NO
					, B.TITLE
					, B.CONTENT
					, B.WRITER_NO
					, M.NICK
					, B.HIT
					, B.ENROLL_DATE
					, B.MODIFY_DATE
					, B.DEL_YN
				FROM BOARD B
				JOIN MEMBER M ON (B.WRITER_NO = M.NO)
				WHERE B.DEL_YN = 'N'
				ORDER BY B.NO DESC
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String writerNo = rs.getString("WRITER_NO");
			String writerNick = rs.getString("NICK");
			String hit = rs.getString("HIT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String delYn = rs.getString("DEL_YN");

			BoardVo vo = new BoardVo(no, title, content, writerNo, writerNick, hit, enrollDate, modifyDate, delYn);
			System.out.println(vo.getNo() + " | " + vo.getTitle() + " | " + vo.getWriterNick() + " | " + vo.getHit());
		}
		
	}
	
	// 게시글 상세 조회
	public void selectBoardOneByNo() throws Exception {
		System.out.println("---- 게시글 상세 조회 ----");
		
		// 1. data 받기/처리
		System.out.print("조회할 게시글 번호 : ");
		String no = sc.nextLine();
		
		// 2. biz (비즈니스 로직) 처리
		// X
		
		// 3. DB 저장/처리
		Connection conn = JDBCTemplate.getConnection();
		
		// 게시글 조회수 증가
		// 게시글 상세 조회와 조회수 증가는 하나의 작업단위(트랜잭션)이기 때문에 하나의 커넥션을 전달하여 씀
		int increaseResult = increaseHit(conn, no);
		
		if (increaseResult != 1) {
			System.out.println("게시글 조회 실패..");
		}
		
		// 게시글 상세 조회
		String sql = """
				SELECT B.NO
					, B.TITLE
					, B.CONTENT
					, B.WRITER_NO
					, M.NICK
					, B.HIT
					, B.ENROLL_DATE
					, B.MODIFY_DATE
					, B.DEL_YN
				FROM BOARD B
				JOIN MEMBER M ON (B.WRITER_NO = M.NO)
				WHERE B.NO = ? 
				AND B.DEL_YN = 'N'
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			// String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String writerNo = rs.getString("WRITER_NO");
			String writerNick = rs.getString("NICK");
			String hit = rs.getString("HIT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String delYn = rs.getString("DEL_YN");

			BoardVo vo = new BoardVo(no, title, content, writerNo, writerNick, hit, enrollDate, modifyDate, delYn);
			System.out.println(vo);

		}
		else {
			System.out.println("게시글 조회 실패..");
		}
	
	}
	// 게시글 검색 (제목)
	public void searchBoardByTitle() throws Exception {
		System.out.println("---- 게시글 검색 (제목) ----");
		
		// 1. data 받기/처리
		System.out.print("검색할 게시글 제목 : ");
		String searchValue = sc.nextLine();
		
		// 2. biz (비즈니스 로직) 처리
		// 검색어(제목)은 2글자 이상이어야 함
		if (searchValue.length() < 2) {
			throw new Exception("검색어는 2글자 이상 입력해주세요");
		}
		
		// 3. DB 저장/처리
		Connection conn = JDBCTemplate.getConnection();
		
		String sql = """
				SELECT B.NO
					, B.TITLE
					, B.CONTENT
					, B.WRITER_NO
					, M.NICK
					, B.HIT
					, B.ENROLL_DATE
					, B.MODIFY_DATE
					, B.DEL_YN
				FROM BOARD B
				JOIN MEMBER M ON (B.WRITER_NO = M.NO)
				WHERE TITLE LIKE '%' || ? || '%'
				AND B.DEL_YN = 'N'
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setNString(1, searchValue);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String writerNo = rs.getString("WRITER_NO");
			String writerNick = rs.getString("NICK");
			String hit = rs.getString("HIT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String delYn = rs.getString("DEL_YN");

			BoardVo vo = new BoardVo(no, title, content, writerNo, writerNick, hit, enrollDate, modifyDate, delYn);
			System.out.println(vo);
		}
		
	}
	
	// 게시글 검색 (내용)
	public void searchBoardByContent() throws Exception {
		System.out.println("---- 게시글 검색 (내용) ----");
		
		// 1. data 받기/처리
		System.out.print("검색할 게시글 내용 : ");
		String searchValue = sc.nextLine();
		
		// 2. biz (비즈니스 로직) 처리
		// 검색어(내용)은 2글자 이상이어야 함
		if (searchValue.length() < 2) {
			throw new Exception("검색어는 2글자 이상 입력해주세요");
		}
		
		// 3. DB 저장/처리
		Connection conn = JDBCTemplate.getConnection();
		
		String sql = """
				SELECT B.NO
					, B.TITLE
					, B.CONTENT
					, B.WRITER_NO
					, M.NICK
					, B.HIT
					, B.ENROLL_DATE
					, B.MODIFY_DATE
					, B.DEL_YN
				FROM BOARD B
				JOIN MEMBER M ON (B.WRITER_NO = M.NO)
				WHERE CONTENT LIKE '%' || ? || '%'
				AND B.DEL_YN = 'N'
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setNString(1, searchValue);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String writerNo = rs.getString("WRITER_NO");
			String writerNick = rs.getString("NICK");
			String hit = rs.getString("HIT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String delYn = rs.getString("DEL_YN");

			BoardVo vo = new BoardVo(no, title, content, writerNo, writerNick, hit, enrollDate, modifyDate, delYn);
			System.out.println(vo);
		}
		
	}
	
	// 게시글 검색 (작성자)
	public void searchBoardByWriter() throws Exception {
		System.out.println("---- 게시글 검색 (작성자) ----");
		
		// 1. data 받기/처리
		System.out.print("검색할 작성자 닉네임 : ");
		String searchValue = sc.nextLine();
		
		// 2. biz (비즈니스 로직) 처리
		// X
		
		// 3. DB 저장/처리
		Connection conn = JDBCTemplate.getConnection();
		
		/*
		String sql = """
				SELECT *
				FROM BOARD
				WHERE WRITER_NO IN (
				    SELECT NO
				    FROM MEMBER
				    WHERE NICK = ?
				    )
                AND DEL_YN = 'N'
				""";
		*/
		
		// 닉네임 주고 번호 얻기 
		String memberNo = selectMemberNoByNick(conn, searchValue);
		
		String sql = """
				SELECT *
				FROM BOARD
				WHERE WRITER_NO = ?
				AND DEL_YN = 'N'
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setNString(1, memberNo);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String writerNo = rs.getString("WRITER_NO");
			// String writerNick = rs.getString("NICK");
			String hit = rs.getString("HIT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			String delYn = rs.getString("DEL_YN");

			BoardVo vo = new BoardVo(no, title, content, writerNo, searchValue, hit, enrollDate, modifyDate, delYn);
			System.out.println(vo);
		}
	}
	
	// 닉네임으로 번호 얻기
	public String selectMemberNoByNick(Connection conn, String searchValue) throws Exception {
		
		String sql = """
				SELECT NO
				FROM MEMBER
				WHERE NICK = ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setNString(1, searchValue);
		ResultSet rs = pstmt.executeQuery();
		
		String no=null;
		
		if (rs.next()) {
			no = rs.getString("NO");
		}
		
		return no;	
	
	}
}
