<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>resp</title>
</head>
<body>
	<h1>1. 로그인 폼</h1>
	<%
		String loginErr = request.getParameter("loginErr");
		if(loginErr != null) out.print("로그인 실패");
	%>
	<br>
	<form action="responseLogin.jsp" method="post">
		아 이 디 : <input type="text" name="user_id"><br>
		패스워드 : <input type="password" name="user_pw">
		<input type="submit" value="로그인">
	</form>

</body>
</html>