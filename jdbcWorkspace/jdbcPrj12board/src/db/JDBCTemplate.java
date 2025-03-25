package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCTemplate {

	public static Connection getConnection () throws Exception {
		// lib
		// conn
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "C##KH";
		String password = "1234";
		Connection conn = DriverManager.getConnection(url, user, password);
		conn.setAutoCommit(false); // 직접 커밋, 롤백할 수 있음 (안쓰면 오토커밋 됨)
		return conn;
	}
}
