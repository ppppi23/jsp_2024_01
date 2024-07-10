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
	<h2>request scope 에 저장한 변수(값) 가져오기</h2>
	<%
	Person p1 = (Person)request.getAttribute("requestPerson");
	%>
	<p><%= request.getAttribute("requestString") %></p>
	<p>이름 : <%= p1.getName() %></p>
	<p>나이 : <%= p1.getAge()%></p>
	
	<%
		request.removeAttribute("requestString");
		// request scope 에 없는 변수를 삭제하려고 함
		request.removeAttribute("requestInteger");
	%>
	
</body>
</html>