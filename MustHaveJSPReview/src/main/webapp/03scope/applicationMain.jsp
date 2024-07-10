<%@page import="common.Person"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>application scope</title>
</head>
<body>
  <h2>application scope 공유</h2>
  <%
    Map<String, Person> maps = new HashMap<>(); 
    maps.put("actor1", new Person("이순신", 40));
    maps.put("actor2", new Person("강감찬", 72));
    
    application.setAttribute("maps", maps);
  %>
  <p>application scope 에 maps 라는 이름으로 HashMap 객체를 저장했습니다</p>
  	
</body>
</html>





