<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 방법 1 : 회원인증정보 속성 삭제
	// session.removeAttribute("UserId");
	// session.removeAttribute("UserName");
	
	// 방법 2 : 모든 속성 한꺼번에 삭제
	session.invalidate();
	
	out.print("<script>alert('로그아웃하셨습니다 !!!');</script>");
	out.print("<script>location.href='loginForm.jsp';</script>");
	// session scope 에 저장한 속성 삭제 후 로그인 페이지로 이동
	// response.sendRedirect("loginForm.jsp");
%>    

<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
	
</body>
</html>