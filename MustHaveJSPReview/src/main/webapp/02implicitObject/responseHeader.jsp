<%@page import="java.util.Collection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
   // 응답 헤더에 추가할 값 준비하기
   //  ㄴ responseMain2.jsp 에서 request scope 에 올린 값들을
   //      request.getParameter()를 호출해서 가져옴   
   SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
   long add_date = s.parse(request.getParameter("add_date")).getTime();
   int add_int   = Integer.parseInt(request.getParameter("add_int"));
   String add_str = request.getParameter("add_str");
   
   // 응답 헤더에 값 추가하기
   response.addDateHeader("myBirthday", add_date);
   response.addIntHeader("myNumber", add_int);
   response.addIntHeader("myNumber", 1004);
   response.addHeader("myName", add_str);
   response.setHeader("myName", "ahn joong keun");
 %>    
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>response</title>
</head>
<body>
  <h2>응답 헤더 정보 출력하기</h2>
  <ul>
  <%
    Collection<String> headerNames = response.getHeaderNames();
    for(String headerName : headerNames){
      String headerValue = response.getHeader(headerName);
  %>
    <li><%= headerName %> : <%= headerValue %></li> 
  <%     
    }
  %>
  </ul>
  <h2>myNumber 만 출력하기</h2>
  <ul>
  <%
	  Collection<String> myNumbers = response.getHeaders("myNumber");
	  for(String myNumber : myNumbers){
  %>
      <li>myNumber : <%= myNumber %></li>
  <%	    
	  }
  %> 	
  </ul> 
</body>
</html>



