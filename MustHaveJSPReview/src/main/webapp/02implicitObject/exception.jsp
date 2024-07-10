<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>exception</title>
</head>
<body>
  <%
    int status = response.getStatus();
  
    if(status == 404){
      out.print("404 에러 발생 !!! <br>");
      out.print("파일 경로 확인해야 됨");
    } else if(status == 405){
      out.print("405 에러 발생 !!! <br>");
      out.print("요청 방식 확인해야 됨");
    } else if(status == 500){
      out.print("500 에러 발생 !!! <br>");
      out.print("소스에 오류 있는 확인해야 됨");
    }
  
  %>	
</body>
</html>




