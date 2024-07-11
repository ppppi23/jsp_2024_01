package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletContext;

public class JDBConnect {
	public Connection conn;
	public Statement stmt;
	public PreparedStatement pstmt;
	public ResultSet rs;
	
	public JDBConnect() {
		
		String driver = "oracle.jdbc.OracleDriver";
		String url    = "jdbc:oracle:thin:@localhost:1521:xe";
		String id     = "tjoeun";
		String pw     = "1111";
		
		try {
			Class.forName(driver);
			System.out.println("ORACLE DRIVER LORAD");
		  conn = DriverManager.getConnection(url, id, pw);
		  System.out.println("ORACLE DB CONNECTED !!!");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	} // 생성자
	
	// parameter 있는 생성자
	public JDBConnect(String driver, String url, String id, String pw) {
	
		try {
			Class.forName(driver);
			System.out.println("ORACLE DRIVER LORAD");
		  conn = DriverManager.getConnection(url, id, pw);
		  System.out.println("ORACLE DB CONNECTED !!!");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	} // 생성자
	
  // parameter 있는 생성자
	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			String url    = application.getInitParameter("OracleURL");
			String id     = application.getInitParameter("OracleId");
			String pw     = application.getInitParameter("OraclePw");
			
			Class.forName(driver);
			System.out.println("ORACLE DRIVER LORAD");
		  conn = DriverManager.getConnection(url, id, pw);
		  System.out.println("ORACLE DB CONNECTED !!!");
		  
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void close() {
		try {
			if(rs != null) { rs.close(); }
			if(pstmt != null) { pstmt.close(); }
			if(stmt != null) { stmt.close(); }
			if(conn != null) { conn.close(); }
			
			System.out.println("JDBC 자원 해제");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}



