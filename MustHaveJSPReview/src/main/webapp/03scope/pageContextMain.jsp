<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  pageContext.setAttribute("pageInteger", 1000);
  pageContext.setAttribute("pageString", "page scope 에 올린 문자열");
  pageContext.setAttribute("pagePerson", new Person("더조은", 21));
%>    
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>page scope</title>
</head>
<body>
  <h2>page scope 에 올린 변수(값) 읽기</h2>
  <%
	  int number = (Integer)(pageContext.getAttribute("pageInteger"));
	  String pageString = pageContext.getAttribute("pageString").toString();
	  Person pagePerson = (Person)(pageContext.getAttribute("pagePerson"));
  %>
  <ul>
    <li>Integer 객체 : <%= number %></li>
    <li>String  객체 : <%= pageString %></li>
    <li>Person  객체 : <%= pagePerson.getName() %>, <%= pagePerson.getAge() %></li>
    <li>Person  객체 : <%= pagePerson %> </li>
  </ul>
  	
  <h2>include 된 파일에서 page scope 에 있는 data 읽어오기</h2>
  <%@ include file="./pageInclude.jsp" %> 	
  
  <h2>페이지 이동 후 page scope 에 있는 data 읽어오기</h2> </h2>
  <a href="pageLocation.jsp">pageLocation.jsp 로 이동하기</a>
  	
</body>
</html>


