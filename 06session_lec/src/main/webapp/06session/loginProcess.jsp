<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  // 로그인 폼 화면으로부터 받은 아이디와 패스워드
  String user_id = request.getParameter("user_id");
  String user_pw = request.getParameter("user_pw");

  // MemberDAO 의 getMemberDTO() 메소드의 반환값으로
  // 지정한 user_id 와 user_pw 에 해당하는 회원 정보를 가져와서
  // MemberDTO dto 에 할당함
  MemberDAO dao = new MemberDAO();
  MemberDTO dto = dao.getMemberDTO(user_id, user_pw);
  dao.close();
  
  // 로그인 성공의 경우
  // 로그인한 회원의 정보를 DB 로 부터 조회해 와서
  // 이 정보를 session scope 에 저장해 놓고
  // (loginForm.jsp 로 이동함 : sendRedirect 방식)
  // 해당 회원이 접속한 site 에서 이 정보가 필요할 때
  // 사용함
  if(dto.getId() != null){
  	session.setAttribute("UserId",dto.getId());
  	session.setAttribute("UserName",dto.getName());
  	response.sendRedirect("loginForm.jsp");
  } else {
  	// 로그인 실패한 경우
  	request.setAttribute("LoginErrorMsg", "로그인 오류가 발생했습니다");
  	// loginForm.jsp 로 이동함 : forward 방식
  	request.getRequestDispatcher("loginForm.jsp")
  	       .forward(request, response);
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