<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>request</title>
</head>
<body>
  <h2>1. 클라이언트 / 서버 환경 정보</h2>
  <ul>
  <li>영어 : <%= request.getParameter("eng") %></li>
  <li>한글 : <%= request.getParameter("han") %></li>
  <li>데이터 전송 방식 : <%= request.getMethod() %></li>
  <li>URL : <%= request.getRequestURL() %></li>
  <li>URI : <%= request.getRequestURI() %></li>
  <li>protocol : <%= request.getProtocol() %></li>
  <li>server name : <%= request.getServerName() %></li>
  <li>server port : <%= request.getServerPort() %></li>
  <li>client IP : <%= request.getRemoteAddr() %></li>
  <li>query string : <%= request.getQueryString() %></li>
  </ul>
</body>
</html>






