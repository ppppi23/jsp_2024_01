<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>application</title>
</head>
<body>
	<h2>web.xml 에 설정한 내용 읽어오기</h2>
	초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %>
	
	<h2>서버의 물리적 경로(윈도우 탐색기에서의 경우) 가져오기</h2>
	application 내장 객체 : <%= application.getRealPath("/02implicitObject") %>
	
	<h2>선언부에서 application 내장 객체 사용하기</h2>
	<%!
		public String useImplicitObject() {
			return this.getServletContext().getRealPath("/02implicitObject");
		}
		public String useImplicitObject(ServletContext app) {
			return app.getRealPath("/02implicitObject");
		}
	%>
	<ul>
		<li>this 사용 : <%= useImplicitObject() %></li>
		<li>내장 객체를 argument 로 넣어서 parameter 로 전달함 </li>
			: <%= useImplicitObject(application) %>
	</ul>
</body>
</html>