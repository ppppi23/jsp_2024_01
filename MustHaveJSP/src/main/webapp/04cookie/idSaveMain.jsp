<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginId = CookieManager.readCookie(request, "loginId");

	String cookieCheck = "";
	if(!loginId.equals("")) {
		cookieCheck = "checked";
	}
%>
    
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>login id save</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<form action="idSaveProcess.jsp" method="post">
		아 이 디 : <input type="text" name="user_id" value="<%= loginId %>">
							 <input type="checkbox" name="save_check" value="Y" <%= cookieCheck %>>
		아아디 저장하기 <br>
		비밀번호 : <input type="password" name="user_pw" ><br>
		<input type="submit" value="로 그 인">
	</form>
</body>
</html>