<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>request</title>
</head>
<body>
  <%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String gender = request.getParameter("gender");
    String[] favo = request.getParameterValues("favo");
    String favos = Arrays.toString(favo);
    String intro = request.getParameter("intro").replace("\r\n", "<br>");
  %>	
  <ul>
    <li>아이디 : <%= id %></li>
    <li>성 별 : <%= gender %></li>
    <li>관심사항 : <%= favos %></li>
    <li>자기소개 : <%= intro %></li>
  </ul>
</body>
</html>


