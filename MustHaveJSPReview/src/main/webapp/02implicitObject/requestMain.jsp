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
  <a href="./requestWebInfo.jsp?eng=Hello&han=안녕">GET 방식 전송</a><br>
  
  <form action="requestWebInfo.jsp" method="post">
    영어 : <input type="text" name="eng" value="Bye"><br>
    한글 : <input type="text" name="han" value="잘 가"><br>
    <input type="submit" value="POST 방식 전송">
  </form>
  
  <h2>2. 클라이언트에서 서버로 data 보내기</h2>
  <form action="requestParameter.jsp" method="post">
    아이디 : <input type="text" name="id"><br>
    성별 : <input type="radio" name="gender" value="man">남자 
           <input type="radio" name="gender" value="woman" checked>여자 <br>
    관심사항 : <input type="checkbox" name="favo" value="경제">경제  
               <input type="checkbox" name="favo" value="정치" checked>정치
               <input type="checkbox" name="favo" value="연예" >연예 <br>
    자기소개 : <textarea name="intro" rows="4" cols="30"></textarea><br>
    <input type="submit" value="전송하기">
  </form>
  
  <h2>3. HTTP 요청 헤더 정보 읽기</h2>
  <a href="requestHeader.jsp">요청 헤더 정보 읽기</a>
  
</body>
</html>




