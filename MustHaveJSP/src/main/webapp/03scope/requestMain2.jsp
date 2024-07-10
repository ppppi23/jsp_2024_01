<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("requestString", "request scope 에 저장한 문자열");
	request.setAttribute("requestPerson", new Person("안중근", 31));
%>

<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>request scope</title>
</head>
<body>
	<h1>requestMain2.jsp</h1>
	<h2>forward 된 page 에서 request scope 에 있는 변수(값) 읽어오기</h2>
	<%
	request.getRequestDispatcher("requestForward.jsp?han=한글&eng=English")
				 .forward(request, response);
	%>
</body>
</html>