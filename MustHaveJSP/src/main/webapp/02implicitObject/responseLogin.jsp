<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>response</title>
</head>
<body>
	<%
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		if(id.equals("tjoeun") && pw.equals("1234")) {
			response.sendRedirect("responseWelcome.jsp");
		} else {
			request.getRequestDispatcher("responseMain.jsp?loginErr=1")
				   .forward(request, response);
		}
	%>
</body>
</html>