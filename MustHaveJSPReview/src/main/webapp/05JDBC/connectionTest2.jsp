<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <h2>JDBC TEST 2</h2>
  <%
    // web.xml 에 설정한 값 가져오기
	String driver = application.getInitParameter("OracleDriver");
	String url    = application.getInitParameter("OracleURL");
	String id     = application.getInitParameter("OracleId");
	String pw     = application.getInitParameter("OraclePw");
  
    JDBConnect jdbc2 = new JDBConnect(driver, url, id, pw);
    jdbc2.close();
  %>
</body>
</html>







