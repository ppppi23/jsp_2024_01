<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>request scope</title>
</head>
<body>
  <h2>Forward 로 이동한 page : requestForward.jsp</h2>
  <h3>RequestMain2.jsp 에서 request scope 에 올린 data 읽어오기 </h3>
  
  <%
    Person pagePerson = (Person)(request.getAttribute("requestPerson"));
  %>  
  <ul>
    <li>String 객체 : <%= request.getAttribute("requestString") %></li>
    <li>Person 객체 : <%= pagePerson.getName() %>, <%= pagePerson.getAge() %></li>
  </ul>  	
  
  <h2>query string 으로 request scope 에 올린 변수(값) 읽어오기</h2>
  <%
    // 한글 encoding 을 UTF-8 로 설정 
    request.setCharacterEncoding("UTF-8");	
    out.print("han : " + request.getParameter("han") + "<br>");
    out.print("eng : " + request.getParameter("eng") + "<br>");
  %>
</body>
</html>


