<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>errorPage, isErrorPage</title>
</head>
<body>
	<%
		try {
		int myAge = Integer.parseInt(request.getParameter("age")) + 10;
		out.println("10 년 후 나이 : " + myAge);
		} catch(Exception e) {
			out.println("예외발생 : 매개변수 age 라는 변수가 request scope 에 없습니다");
		}
 	%>
</body>
</html>