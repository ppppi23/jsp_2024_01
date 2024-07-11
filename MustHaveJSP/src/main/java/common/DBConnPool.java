package common;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnPool {
	public Connection conn;
	public Statement stmt;
	public PreparedStatement pstmt;
	public ResultSet rs;
	
  public DBConnPool() {
  	try {
  		// Connection Pool (DataSource) 얻기
  		Context initCtx = new InitialContext();
  		Context ctx = (Context)initCtx.lookup("java:comp/env");
  		DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
  		
  		// Connection Pool (DataSource) 을 통해서 Connection 객체 얻기
  		conn = source.getConnection();
  		System.out.println("DB Connection Pool connected !!!");
  		
  	}catch(Exception e) {
  		System.out.println("DB Connection Pool failed !!!");
  		e.printStackTrace();
  	}
  } // 생성자
  
  // 연결 해제 (자원 반납)
  public void close() {
  	try {
			if(rs != null) { rs.close(); }
			if(pstmt != null) { pstmt.close(); }
			if(stmt != null) { stmt.close(); }
			if(conn != null) { conn.close(); }
			
			System.out.println("Connection Pool 자원 반납");
		} catch (Exception e) {
			e.printStackTrace();
		}
  }
  
}


