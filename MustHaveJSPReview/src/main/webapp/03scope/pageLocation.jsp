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
  <h2>이동 후 page scope 에 저장된 data 읽어오기</h2>
  <%
    Object pInteger = pageContext.getAttribute("pageInteger");
    Object pString = pageContext.getAttribute("pageString");
    Object pPerson = pageContext.getAttribute("pagePerson");
    
    Integer number = (Integer)pInteger;
    String str = (String)pString;
    Person p = (Person)pPerson;
  %>	
  <ul>
    <li>Integer 객체 : <%= number==null ? "값을 확인하지 못함" : number %></li>
    <li>String  객체 : <%= str==null ? "값을 확인하지 못함" : str %></li>
    <li>Person  객체 : <%= p==null ? "값을 확인하지 못함" : p.getName() %>, 
                       <br>
                       <%= p==null ? "값을 확인하지 못함" : p.getAge() %></li>
    
  </ul>
  
</body>
</html>