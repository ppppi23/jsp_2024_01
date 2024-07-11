<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
  long creationTime = session.getCreationTime();
  String creationTimeStr = dateFormat.format(new Date(creationTime));
  long lastTime = session.getLastAccessedTime();
  String lastTimeStr = dateFormat.format(new Date(lastTime));
%>    
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>session</title>
</head>
<body>
  <h2>session 설정 확인</h2>
  <ul>
    <li>session 유지 시간 : <%= session.getMaxInactiveInterval() %></li>
    <li>session 아 이 디 : <%= session.getId() %></li>
    <li>최초   요청 시간 : <%= creationTimeStr %></li>
    <li>마지막 요청 시간 : <%= lastTimeStr %></li>
  </ul>	
</body>
</html>