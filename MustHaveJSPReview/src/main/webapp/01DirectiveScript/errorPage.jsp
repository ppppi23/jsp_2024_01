<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="isErrorPage.jsp"
%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>errorPage, isErrorPage</title>
</head>
<body>
  <%
     int myAge = Integer.parseInt(request.getParameter("age")) + 10;
     out.println("10 년 후 나이 : " + myAge);
  %>
</body>
</html>





