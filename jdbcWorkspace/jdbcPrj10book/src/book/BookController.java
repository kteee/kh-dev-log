package book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

import db.JDBCTemplate;

public class BookController {

	Scanner sc;
	
	public BookController() {
		sc = new Scanner(System.in);
	}
	
	// 메뉴
	public void menu() throws Exception {
		System.out.println("--- MENU ----");
		System.out.println("1. 도서 등록");
		System.out.println("2. 도서 가격 수정");
		System.out.println("3. 도서 대여");
		System.out.println("4. 도서 반납");
		System.out.println("5. 도서 삭제");
		System.out.println("6. 도서 상세 조회");
		System.out.println("7. 도서 목록 조회");
		System.out.println("8. 도서 검색 (제목)");
		System.out.println("9. 도서 검색 (저자)");
		System.out.println("10. 도서 검색 (장르)");
		System.out.println("11. 도서 검색 (가격)");
		System.out.println("12. 도서 검색 (출판일)");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
		switch(num) {
		case "1" : insert(); break;
		case "2" : updatePrice(); break;
		case "3" : rentBook(); break;
		case "4" : returnBook(); break;
		case "5" : deleteBook(); break;
		case "6" : findBookByNo(); break;
		case "7" : findBookAll(); break;
		case "8" : findBookByTitle(); break;
		case "9" : fineBookByAuthor(); break;
		case "10" : fineBookByGenre(); break;
		case "11" : fineBookByPrice(); break;
		case "12" : fineBookByPublicationDate(); break;
		default : System.out.println("잘못 입력하였습니다.");
		}
	}
	
	// 등록하기
	private void insert() throws Exception {
		System.out.println("---- 도서 등록 ----");
		// data
		System.out.print("제목 : ");
		String title = sc.nextLine();
		System.out.print("장르 : ");
		String genre = sc.nextLine();
		System.out.print("저자 : ");
		String author = sc.nextLine();
		System.out.print("가격 : ");
		String price = sc.nextLine();
		
		// conn 
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
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
		pstmt.setString(1, title);
		pstmt.setString(2, genre);
		pstmt.setString(3, author);
		pstmt.setString(4, price);	// String으로 숫자 넣으면 DB에서 NUMBER로 자동 형변환 해줌
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("도서 등록 성공!");
		}
		else {
			System.out.println("도서 등록 실패..");
		}
		
	}
	
	// 가격 수정하기
	private void updatePrice() throws Exception {
		System.out.println("---- 도서 가격 수정 ----");
		System.out.print("변경할 도서 번호 : ");
		String no = sc.nextLine();
		System.out.print("변경할 가격 : ");
		String price = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				UPDATE BOOK
				SET
				    PRICE = ?
				WHERE NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, price);
		pstmt.setString(2, no);
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("가격 수정 성공!");
		}
		else {
			System.out.println("가격 수정 실패..");
		}
	}
	
	// 렌탈여부 수정하기 (대여하기)
	private void rentBook() throws Exception {
		System.out.println("---- 도서 대여 ----");
		System.out.print("대여할 도서 번호 : ");
		String no = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				UPDATE BOOK
				SET
				    RENTAL_YN = 'N'
				WHERE NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("도서 대여 성공!");
		}
		else {
			System.out.println("도서 대여 실패..");
		}
	}
	
	// 렌탈여부 수정하기 (반납하기)
	private void returnBook() throws Exception {
		System.out.println("---- 도서 반납 ----");
		System.out.print("반납할 도서 번호 : ");
		String no = sc.nextLine();
		
		// conn 
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL 
		String sql = """
				UPDATE BOOK
				SET
				    RENTAL_YN = 'Y'
				WHERE NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("도서 반납 성공!");
		}
		else {
			System.out.println("도서 반납 실패..");
		}
	}
	
	// 삭제하기
	private void deleteBook() throws Exception {
		System.out.println("---- 도서 삭제 ----");
		System.out.print("삭제할 도서 번호 : ");
		String no = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				DELETE BOOK
				WHERE NO = ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			System.out.println("도서 삭제 성공!");
		}
		else {
			System.out.println("도서 삭제 실패..");
		}
	}
	
	// 상세조회
	private void findBookByNo() throws Exception {
		System.out.println("---- 도서 상세 조회 ----");
		System.out.print("조회할 도서 번호 : ");
		String no = sc.nextLine();
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT * 
				FROM BOOK
				WHERE NO = ? 
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			String title = rs.getString("TITLE");
			String genre = rs.getString("GENRE");
			String author = rs.getString("AUTHOR");
			String price = rs.getString("PRICE");
			String rentalYn = rs.getString("RENTAL_YN");
			String publicationDate = rs.getString("PUBLICATION_DATE");
			String modifyDate = rs.getString("MODIFY_DATE");
			
			BookVo vo = new BookVo (no, title, genre, author, price, rentalYn, publicationDate, modifyDate);
			System.out.println(vo);
		}
		else {
			System.out.println("상세 조회 실패..");
		}
	}
	
	// 목록조회 (최신순)
	private void findBookAll() throws Exception {
		System.out.println("---- 도서 목록 조회 ----");
		System.out.println("NO / TITLE");
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT * 
				FROM BOOK 
				ORDER BY NO DESC
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			System.out.println(no + " / " + title );
		}
	}
	
	// 도서 검색 (제목)
	private void findBookByTitle() throws Exception {
		System.out.println("---- 도서 검색 (제목) ----");
		System.out.print("도서 제목 입력 : ");
		String searchValue = sc.nextLine();
		System.out.println("NO / TITLE");
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT *
				FROM BOOK
				WHERE TITLE LIKE '%' || ? || '%'  
				""";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, searchValue);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			System.out.println(no + " / " + title );
		}
		
	}
	
	// 도서 검색 (저자)
	private void fineBookByAuthor() throws Exception {
		System.out.println("---- 도서 검색 (저자) ----");
		System.out.print("도서 저자 입력 : ");
		String searchValue = sc.nextLine();
		System.out.println("NO / TITLE / AUTHOR");
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT *
				FROM BOOK
				WHERE AUTHOR LIKE '%' || ? || '%'  
				""";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, searchValue);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String author = rs.getString("AUTHOR");
			System.out.println(no + " / " + title + " / " + author );
		}
	}
	
	// 도서 검색 (장르)
	private void fineBookByGenre() throws Exception {
		System.out.println("---- 도서 검색 (장르) ----");
		System.out.print("도서 장르 입력 : ");
		String searchValue = sc.nextLine();
		System.out.println("NO / TITLE / GENRE");
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT *
				FROM BOOK
				WHERE GENRE LIKE '%' || ? || '%'  
				""";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, searchValue);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String genre = rs.getString("GENRE");
			System.out.println(no + " / " + title + " / " + genre );
		}
		
	}
	
	// 도서 검색 (가격 범위 설정)
	private void fineBookByPrice() throws Exception {
		System.out.println("---- 도서 검색 (가격) ----");
		System.out.print("최소 가격 : ");
		String startPrice = sc.nextLine();
		System.out.print("최대 가격 : ");
		String endPrice = sc.nextLine();
		System.out.println("NO / TITLE / PRICE");
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT * 
				FROM BOOK
				WHERE PRICE BETWEEN ? AND ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, startPrice);
		pstmt.setString(2, endPrice);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String price = rs.getString("PRICE");
			System.out.println(no + " / " + title + " / " + price);
		}
	}
	
	// 도서 검색 (출판일 범위 설정)
	private void fineBookByPublicationDate() throws Exception {
		System.out.print("출판일 시작 : ");
		String startDate = sc.nextLine();
		System.out.print("출판일 종료 : ");
		String endDate = sc.nextLine();
		System.out.println("NO / TITLE / PUBLICATION_DATE");
		
		// conn
		Connection conn = JDBCTemplate.getConnection();
		
		// SQL
		String sql = """
				SELECT * 
				FROM BOOK
				WHERE PUBLICATION_DATE BETWEEN ? AND ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, startDate);
		pstmt.setString(2, endDate);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String publicationDate = rs.getString("PUBLICATION_DATE");
			System.out.println(no + " / " + title + " / " + publicationDate);
		}
	}
}
