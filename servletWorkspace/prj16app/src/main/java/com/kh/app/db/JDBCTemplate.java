package com.kh.app.db;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class JDBCTemplate {

	public static SqlSession getSqlSession() throws IOException {
		// 설계도를 이용해 build 하여 sqlSessionFactory 만들기
		// 설계도는 resource = "~~~~~" << 여기! 
		String resource = "mybatis/config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		
		// sqlSessionFactory 이용하여 SqlSession 얻기
		SqlSession ss = sqlSessionFactory.openSession(false); // false 쓰면 autoCommint 꺼짐
		
		return ss;
	}
	
	// 이제 이거 안씀 (Mybatis 쓸거임)
	public static Connection getConnection() throws Exception { 
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "C##KH";
		String password = "1234";
		Connection conn = DriverManager.getConnection(url, user, password);
		
		conn.setAutoCommit(false);
		
		return conn;
	}
	
	public static void commit(Connection conn) {
	   try {
	      if(conn != null && !conn.isClosed()) {
	         conn.commit();
	      }
	   } catch (SQLException e) {
	      e.printStackTrace();
	   }
	}
	   
	public static void rollback(Connection conn) {
	   try {
	      if(conn != null && !conn.isClosed()) {
	         conn.rollback();
	      }
	   } catch (SQLException e) {
	      e.printStackTrace();
	   }
	}
	  
	public static void close(Connection conn) {
	   try {
	      if(conn != null && !conn.isClosed()) {
	         conn.close();
	      }
	   } catch (SQLException e) {
	      e.printStackTrace();
	   }
	}
	   
	   public static void close(Statement x) {
	      try {
	         if(x != null && !x.isClosed()) {
	            x.close();
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	   }
	   
	   public static void close(ResultSet x) {
	      try {
	         if(x != null && !x.isClosed()) {
	            x.close();
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	   }
	   
}
