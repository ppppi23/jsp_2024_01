<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>session scope</title>
</head>
<body>
  <h2>page 이동 후, session scope 에 저장된 변수(값) 읽어오기</h2>
  <%
    ArrayList<String> strList2 = 
             (ArrayList<String>)(session.getAttribute("strList"));
    for(String str1 : strList2){
      out.print(str1 + "<br>");	
    }
  %>	
</body>
</html>


