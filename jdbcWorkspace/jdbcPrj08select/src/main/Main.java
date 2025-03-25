package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) throws SQLException {
		
		System.out.println("===== select =====");
		
		// lib
		
		// conn
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "C##KH";
		String password = "1234";
		Connection conn = DriverManager.getConnection(url, user, password);
		
		// SQL (상세조회)
		/*
		Scanner sc = new Scanner(System.in);
		System.out.print("조회할 게시글 번호 : ");
		String num = sc.nextLine();
		
		String sql = """
				SELECT * FROM BOARD
				WHERE NO = ?
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		ResultSet rs = pstmt.executeQuery();
		
		// DB에서 꺼낸 데이터(ResultSet) 출력
		
		// rs.next()은 ResultSet에서 다음 행(row)으로 커서를 이동시키는 메서드임 (boolean 값 반환)
		// true : 다음 행이 존재할 경우, 커서를 다음 행으로 이동시키고 true 반환
		// false : 더 이상 행이 없을 경우, 즉 ResultSet의 마지막에 도달하면 false 반환
		if (rs.next()) { 		
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			BoardVo board = new BoardVo(no, title, content, enrollDate);
			System.out.println(board);
		} 
		else {
			System.out.println("상세조회 실패");
		}
		*/
		
		
		// SQL (목록조회)
		
		String sql = """
				SELECT * FROM BOARD
				""";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {	
			String no = rs.getString("NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			
			BoardVo board = new BoardVo(no, title, content, enrollDate);
			System.out.println(board);
		}
	}
}
