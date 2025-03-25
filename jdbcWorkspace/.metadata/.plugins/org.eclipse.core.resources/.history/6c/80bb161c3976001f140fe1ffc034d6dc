package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Main {

	public static void main(String[] args) throws Exception {

		System.out.println("hello");
		
		// Connection 준비
		Class.forName("oracle.jdbc.driver.OracleDriver"); // 이 드라이버 연결할거임
	    String db_url = "jdbc:oracle:thin:@localhost:1521:xe";  // 호스트이름(ip), 포트, SID
	    String db_id = "C##KH";
	    String db_pw = "1234";
	    Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	    // SQL 작성
	    // 쌍따옴표 3개 하면 문자열 여러줄 보기 편하게 작성 가능
	    // 자바에서 쿼리문 작성할 때는 세미콜론 빼고 작성해야 함
	    String s = """ 
	    		CREATE TABLE BOARD (
	    			TITLE 		VARCHAR2(100)
	    			, CONTENT 	VARCHAR2(100)
	    		)
	    		""";
	    
	    // SQL 실행
	    Statement stmt = conn.createStatement();
	    stmt.execute(s);
	}

}
