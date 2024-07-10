<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<String> strList = new ArrayList<String>();
	strList.add("더조은");
	strList.add("아이티");
	strList.add("아카데미");
	
	session.setAttribute("strList", strList);
%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>session scope</title>
</head>
<body>
	<h1>session scope 에서 동작 확인용 page</h1>
	<a href="sessionLocation.jsp">sessionLocation.jsp 로 이동하기</a>

</body>
</html>