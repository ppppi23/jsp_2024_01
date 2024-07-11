<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginErrorMsg = (String)(request.getAttribute("loginErrorMsg"));
%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>session</title>
  <style>
  	.errorMsg {
  		color : red;	font-size : 1.2em;
  	}
  </style>
</head>
<body>
	<h2>로 그 인</h2>
	<span class="errorMsg">
		<%= loginErrorMsg == null? "" : loginErrorMsg %>
	</span>
	<%
		// 로그인 상태 확인하기
		// session.getAttribute("UserId") == null  <--  로그인 안된 상태
		if(session.getAttribute("UserId") == null) {
	%>
		<script>
			function validateForm(form) {
				if(!form.user_id.value) {
					alert("아이디를 입력해 주세요");
					return false;
				}
				if(form.user_pw.value == "") {
					alert("비밀번호를 입력해 주세요");
					return false;
				}
			}
		</script>
		<form action="loginProcess.jsp" method="post" name="loginForm"
					onsubmit="return validateForm(this);">
					<ul>
						<li>아 이 디 : <input type="text"	name="user_id"></li>
						<li>비밀번호 : <input type="password"	name="user_pw"></li>
						<li><input type="submit"	value="로 그 인"></li>
					</ul>
		</form>
	<%
		} else	// 로그인 된 상태
		{
	%>	
		<%= session.getAttribute("UserName") %> 회원님, 로그인하셨습니다. <br>
		<a href="logout.jsp">[로그아웃]</a>
	<%	
		}
	%>
	
</body>
</html>