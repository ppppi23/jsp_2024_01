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
  <h2>JDBC TEST 3</h2>
  <%
    JDBConnect jdbc3 = new JDBConnect(application);
    jdbc3.close();
  %>
</body>
</html>







