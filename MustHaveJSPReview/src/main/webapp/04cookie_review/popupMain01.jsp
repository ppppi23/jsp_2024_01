<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String popupMode = "on";
%>    
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>cookie 를 이용한 popup 관리 ver 1</title>
  <style>
    div#popup{
      position:absolute; top: 100px; left: 50px;
      width: 270px; height: 100px;
      color: yellow; background-color: gray;
    }
    div#popup > div {
      position: relative; top: 0px; padding: 10px;
      border: 1px solid gray;
      color: black; background-color: #fff;      
    }
  </style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
  <script>
    // 닫기 버튼 누르면 팝업창을 숨김 처리함  
    $(function(){
      $('#closeBtn').click(function(){
        $('#popup').hide();	  
      });	  
    });
  </script>
</head>
<body>
  <h2>팝업 메인 페이지</h2>
  <%
    for(int i = 1; i <= 10; i++){
      out.print("현재 팝업창은 " + popupMode + " 상태입니다<br>");	
    }
    if (popupMode.equals("on")){
  %>	
    <div id="popup">
      <h2 align="center">공지사항 팝업니다</h2>
      <div align="right">
        <form name="popFrm">
          <input type="checkbox" id="inactiveToday" value="1">
           하루 동안 열지 않음
          <input type="button" value="닫기" id="closeBtn"> 
        </form>
      </div>
    </div>
  <%
    }
  %>
</body>
</html>





