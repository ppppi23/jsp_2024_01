<%@page import="utils.JSFunction"%>
<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	String save_check = request.getParameter("save_check");
	
	// 로그인 성공한 경우
	if(user_id.equals("tjoeun") && user_pw.equals("1234")) {
		// 아이디 저장하기에 체크되어 있는지 확인하기
		if(save_check != null && save_check.equals("Y")) {
			CookieManager.makeCookie(response, "loginId", user_id, 86400);
		} else {
			CookieManager.deleteCookie(response, "loginId");
		}
		
		JSFunction.alertLocation("로그인 성공 !!!", "idSaveMain.jsp", out);
	} else { // 로그인 실패
		JSFunction.alertBack("로그인 실패 !!!", out);
	}
		
		
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