<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"    
%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>page 지시어 : errorPage / isErrorPage</title>
</head>
<body>
  <h2>서비스 중 일시적인 오류가 발생했습니다</h2>
  <p>
    오 류 명 : <%= exception.getClass().getName() %><br>
    오류 메세지 : <%= exception.getMessage() %>
  </p>
</body>
</html>



