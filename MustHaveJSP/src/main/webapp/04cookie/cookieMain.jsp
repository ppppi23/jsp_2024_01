<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>cookie</title>
</head>
<body>
	<h2>cookie 설정</h2>
	<%
		Cookie cookie = new Cookie("myCookie", "키1");
		cookie.setPath(request.getContextPath());
		cookie.setMaxAge(3600);
		response.addCookie(cookie);
	%>
	
	<h2>cookie 설정 후 cookie 값 확인하기</h2>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				String cookieName = c.getName();
				String cookieValue = c.getValue();
				
				out.print(String.format("%s : %s<br>", cookieName, cookieValue));
			}
		}
	%>
	
	<h2>page 이동 후 cookie 값 확인하기</h2>
	<a href="cookieResult.jsp">cookieResult.jsp 에서 cookie 값 확인하기</a>
	
</body>
</html>