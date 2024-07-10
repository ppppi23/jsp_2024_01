<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>cookieResult</title>
</head>
<body>
	<h1>cookieResult.jsp</h1>
	<h2>cookie 값 확인하기 (cookie 가 생성된 이후의 page)</h2>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(int i = 0; i < cookies.length; i++) {
				String cookieName = cookies[i].getName();
				String cookieValue = cookies[i].getValue();
				out.println(String.format("cookie name : %s - cookie value : %s<br>", cookieName, cookieValue));
			}
		}
	%>
	
</body>
</html>