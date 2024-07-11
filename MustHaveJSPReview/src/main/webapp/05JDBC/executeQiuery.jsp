<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.DBConnPool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JDBC</title>
  <style>
    table, th, td {
      border: 1px solid black;
      text-align: center;
    }
    table {
      border-collapse:collapse;
      width: 520px;
    }
    th, td{
     padding: 10x;
    }    
    th{
      background-color: #6b99db;
      color: white; font-weight: bold;
    }
    td{
      background-color: #e6ecf5;
    }
  </style>
</head>
<body>
  <h2>회원 목록 조회하기 : executeQuery() </h2>
  <%
    DBConnPool pool = new DBConnPool();
  
    String sql = "SELECT id, pw, name, regidate FROM MEMBER";
    Statement stmt = pool.conn.createStatement();
    
    ResultSet rs = stmt.executeQuery(sql);
  %>
   <table >
    <tr><th>아 이 디</th><th>비밀번호</th><th>이  름</th><th>등 록 일</th></tr>
  <%
    while(rs.next()){
      // String id = rs.getString("id"); 	
      String id = rs.getString(1);
      String pw = rs.getString(2);
      // String name = rs.getString(3);
      String name = rs.getString("name");
      // rs.getDate(4);
      Date regidate = rs.getDate("regidate");
      
      // out.print(String.format("%s - %s - %s - %s", id, pw, name, regidate) + "<br>");
   %>
      <tr><td><%=id %></td><td><%=pw %></td><td><%=name %></td><td><%=regidate %></td></tr>
      
  <%      
    }
    pool.close();
  
  %>
  </table>	
</body>
</html>