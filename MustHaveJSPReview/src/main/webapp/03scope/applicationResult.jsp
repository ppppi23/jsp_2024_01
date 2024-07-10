<%@page import="java.util.Set"%>
<%@page import="common.Person"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>application scope</title>
</head>
<body>
  <h1>application scope 에 저장한 변수(값) 읽어오기</h1>
  <%
    Map<String, Person> maps2 = 
       (Map<String, Person>)application.getAttribute("maps");
  
    Set<String> keys = maps2.keySet();
    for(String key : keys){
    	Person person = maps2.get(key);
    	out.print(String.format("이름 : %s, 나이 : %d<br>", 
    			                person.getName(), person.getAge()));
    }
  %>
  	
</body>
</html>