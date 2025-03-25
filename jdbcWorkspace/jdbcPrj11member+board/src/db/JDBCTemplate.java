package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCTemplate {

	public static Connection getConnection() throws SQLException {
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "C##KH";
		String password = "1234";
		Connection conn = DriverManager.getConnection(url, user, password);
		conn.setAutoCommit(false);
		
		return conn;
		
	}
}
