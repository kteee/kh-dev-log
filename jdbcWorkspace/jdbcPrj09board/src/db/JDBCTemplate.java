package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCTemplate {

	// 객체 생성 없이 메서드 호출하기 -> static 메서드로 만들기 (정적 메서드)
	public static Connection getConnection() throws Exception {
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "C##KH";
		String password = "1234";
		Connection conn = DriverManager.getConnection(url, user, password);
		// 오토커밋 안끄면 자동으로 오토커밋 됨 (오토커밋 시 commit 따로 안찍어도 됨)
		
		return conn;
		
	}
}
