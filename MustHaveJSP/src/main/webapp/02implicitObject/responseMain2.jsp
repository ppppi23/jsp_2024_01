<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>resp</title>
</head>
<body>
	<h1>2. HTTP 응답 헤더 설정하기</h1>
	<form action="responseHeader.jsp" method="get">
		날짜형식 : <input type="text" name="add_date" value="2024-07-10 10:07"><br>
		숫자형식 : <input type="text" name="add_int" value="8282"><br>
		문자형식 : <input type="text" name="add_str" value="더조은"><br>
		<input type="submit" value="응답 헤더 설정 & 출력">
	</form>

</body>
</html>