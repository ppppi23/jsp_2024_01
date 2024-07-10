<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>page scope</title>
</head>
<body>
  <h2> include.jsp </h2>
  <%
    int number2 = (Integer)(pageContext.getAttribute("pageInteger"));
    String pageString2 = pageContext.getAttribute("pageString").toString();
    Person pagePerson2 = (Person)(pageContext.getAttribute("pagePerson"));
  %>	
  <ul>
    <li>Integer 객체 : <%= number2 %></li>
    <li>String  객체 : <%= pageString2 %></li>
    <li>Person  객체 : <%= pagePerson2.getName() %>, <%= pagePerson2.getAge() %></li>
    <li>Person  객체 : <%= pagePerson2 %> </li>
  </ul>
</body>
</html>