package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;
import db.JDBCTemplate;

public class BoardController {

	private Scanner sc;
	
	public BoardController() {
		sc = new Scanner(System.in);
	}
	
	// 메뉴
	public void menu() throws Exception {
		System.out.println("===== MENU =====");
		System.out.println("1. 게시글 작성");
		System.out.println("2. 게시글 수정");
		System.out.println("3. 게시글 삭제");
		System.out.println("4. 게시글 상세 조회");
		System.out.println("5. 게시글 목록 조회");
		System.out.println("6. 게시글 검색 (제목)");
		System.out.println("7. 게시글 검색 (내용)");
		System.out.print("메뉴 번호 선택 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : write(); break;
		case "2" : edit(); break;
		case "3" : delete(); break;
		case "4" : findBoardByNo(); break;
		case "5" : findBoardAll(); break;
		case "6" : findBoardByTitle(); break;
		case "7" : findBoardByContent(); break;
		default : System.out.println("잘못 입력하였습니다.");
		}
	}
	
	// 게시글 작성
	public void write() throws Exception {
		System.out.println("---- 게시글 작성 ----");
		
		// 1. 유저에게 data 받기
		System.out.print("제목 : ");
		String title = sc.nextLine();
		System.out.print("내용 : ");
		String content = sc.nextLine();
		
		// 2. data를 객체로 뭉쳐주기
		// 1) 기본 생성자로 만들고 setter로 title, content 채워주기
		// 2) 4개 인자 생성자로 만들되 no, enrollData를 null로 채우기
		BoardVo vo = new BoardVo(null, title, content, null);
		
		// 3.객체 data DB에 저장
		// conn
		Connection conn = JDBCTemplate.getConnection();
		// SQL
		String sql = "INSERT INTO BOARD(NO, TITLE, CONTENT) VALUES( SEQ_BOARD.NEXTVAL, ? , ? )";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		int result = pstmt.executeUpdate();
		
		if(result == 1) {
			System.out.println("게시글 작성 성공!");
		}
		else {
			System.out.println("게시글 작성 실패...");
		}
	}
	
	// 게시글 수정
	public void edit() throws Exception {
		System.out.println("---- 게시글 수정 ----");
		
		// data 받기
		System.out.print("수정할 게시글 번호 : ");
		String num = sc.nextLine();
		System.out.print("수정할 제목 : ");
		String title = sc.nextLine();
		System.out.print("수정할 내용 : ");
		String content = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				UPDATE BOARD
				SET 
					TITLE = ?
					, CONTENT = ?
				WHERE NO = ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, num);
		int result = pstmt.executeUpdate();
		
		if(result == 1) {
			System.out.println("게시글 수정 성공!");
		}
		else {
			System.out.println("게시글 수정 실패...");
		}
	}
	
	// 게시글 삭제
	public void delete() throws Exception {
		System.out.println("---- 게시글 삭제 ----");
		
		// data 받기
		System.out.print("삭제할 게시글 번호 : ");
		String num = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				DELETE BOARD 
				WHERE NO = ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		int result = pstmt.executeUpdate();
		
		if(result == 1) {
			System.out.println("게시글 삭제 성공!");
		}
		else {
			System.out.println("게시글 삭제 실패...");
		}
		
	}
	
	// 게시글 상세조회
	public void findBoardByNo() throws Exception {
		System.out.println("---- 게시글 상세 조회 ----");
		
		// data 받기
		System.out.print("조회할 게시글 번호 : ");
		String num = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT * FROM BOARD
				WHERE NO = ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			BoardVo vo = new BoardVo(no, title, content, enrollDate);
			System.out.println(vo);
		}
		else {
			System.out.println("게시글 조회 실패..");
		}
		
	}
	
	// 게시글 목록조회
	public void findBoardAll() throws Exception {
		System.out.println("---- 게시글 목록 조회 ----");
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
				
		// SQL
		String sql = """
				SELECT 	* FROM BOARD
				ORDER BY NO
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			BoardVo vo = new BoardVo(no, title, content, enrollDate);
			System.out.println(vo);
		}
	}
	
	// 게시글 검색 (제목)
	public void findBoardByTitle() throws Exception {
		System.out.println("---- 게시글 검색 (제목) ----");
		
		// data 받기
		System.out.print("검색할 게시글 제목 : ");
		String search = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT * FROM BOARD
				WHERE TITLE LIKE ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%"+search+"%");
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			BoardVo vo = new BoardVo(no, title, content, enrollDate);
			System.out.println(vo);
		}

	}
	
	// 게시글 검색 (내용)
	public void findBoardByContent() throws Exception {
		System.out.println("---- 게시글 검색 (내용) ----");
		
		// data 받기
		System.out.print("검색할 게시글 내용 : ");
		String search = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT * FROM BOARD
				WHERE CONTENT LIKE ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%"+search+"%");
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			BoardVo vo = new BoardVo(no, title, content, enrollDate);
			System.out.println(vo);
		}
	}
	
}
