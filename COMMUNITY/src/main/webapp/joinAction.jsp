<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id ="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userid" /> 
<jsp:setProperty name="user" property="password" />
<jsp:setProperty name="user" property="username" />
<jsp:setProperty name="user" property="email" />
<jsp:setProperty name="user" property="nicname" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	 <%
	 	String userID = null;
	 

	 	
		 if(session.getAttribute("userid") != null){
			 userID = (String) session.getAttribute("userid");
			
		 }
		 if(userID != null){
				PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("alert('이미 로그인이 되어있습니다.')");
		 		script.println("location.href = 'main.jsp'");
		 		script.println("</script>");
		 	
		 }
	 	if( user.getUserid() == null ||  user.getPassword() == null	|| user.getUsername() ==null 
	 			|| user.getEmail() ==null || user.getNicname() == null ){
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("alert('입력이 안된 사항이 있습니다.')");
	 		script.println("history.back()");
	 		script.println("</script>");
	 	}
	 	// 입력안한거있나 체크하는 조건문  
	 	
	 	
	 	else { 
	 		UserDAO userDAO = new UserDAO();
		 	int result = userDAO.join(user);
		 	
		 	// join 메소드 실행 (회원가입 )
		 	 if(result == -1){
		 		PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("alert('이미 존재하는 아이디입니다.')");
		 		script.println("history.back()");
		 		script.println("</script>");
		 	}
		 	
		 	// 아이디 세션에 저장후 메인페이지 이동
		 	else {
		 		session.setAttribute("userid", user.getUserid());
		 		
		 		PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("location.href = 'main.jsp'");
		 		script.println("</script>");
		 	}
	 	}

	 	
	 %>
</body>
</html>	