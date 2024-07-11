<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.DBConnPool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JDBC</title>
</head>
<body>
	<h2>회원 등록 테스트</h2>
	<%
		// DB 에 연결
		DBConnPool pool = new DBConnPool();
		
		// 테스트용 입력값 준비
		String id = "academy";
		String pw = "1111";
		String name = "아카데미";
		
		// 쿼리문 생성
		String sql = "INSERT INTO MEMBER(id, pw, name) VALUES (?, ?, ?)";
		PreparedStatement pstmt = pool.conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		
		// 쿼리 수행
		int inResult = pstmt.executeUpdate();
		out.println(inResult + " 행이 추가되었습니다");
		out.println("회원" + inResult + " 명이 등록되었습니다");
		
		pool.close();
	%>
	
	
</body>
</html>