<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="bbs.NewsBbs"%>
<%@ page import="bbs.NewsBbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	 <%
	 	String userID = null;
		 int postID = 0;

		 if(session.getAttribute("userid") != null){
			 userID = (String) session.getAttribute("userid");
			
		 }
		 if(userID == null){
				PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("alert('로그인 하세요.')");
		 		
		 		script.println("location.href ='login.jsp'");
		 		script.println("</script>");
		 	
		 }
		 
		
		if(request.getParameter("post_id") != null){		
		postID = Integer.parseInt(request.getParameter("post_id"));
			
		}
			
			
				
		else {
			NewsBbs newsbbs = new NewsBbsDAO().getBbs(postID);
			/* if(!userID.equals(newsbbs.getUSER_ID() )){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('권한이 없습니다 .')");
				script.println("location.href='newsBbs.jsp'");
				script.println("</script>");
			} */
				
			 
			 if( request.getParameter("title") == null ||  request.getParameter("content") == null	|| request.getParameter("content") == "" 
			|| request.getParameter("page") == null ){
			 		PrintWriter script = response.getWriter();
			 		script.println("<script>");
			 		script.println("alert('입력이 안된 사항이 있습니다.')");
			 		script.println("history.back()");
			 		script.println("</script>");
			 	}
			 	// 입력안한거있나 체크하는 조건문  
			 	
			 	
			 	else{	 
			 		NewsBbsDAO BbsDAO = new NewsBbsDAO();
				 	int result = BbsDAO.update(postID, request.getParameter("title"), request.getParameter("content"), request.getParameter("page"));
				 	
				 	// join 메소드 실행 (회원가입 )
				 	 if(result == -1){
				 		PrintWriter script = response.getWriter();
				 		script.println("<script>");
				 		script.println("alert('글쓰기에 실패했습니다.')");
				 		script.println("history.back()");
				 		script.println("</script>");
				 	}
				 	
				 	// 아이디 세션에 저장후 메인페이지 이동
				 	else {
				 		
				 		
				 		PrintWriter script = response.getWriter();
				 		script.println("<script>");
				 		script.println("location.href = 'newsBbs.jsp'");
				 		script.println("</script>");
				 	}
			 	}
			 
		 }
		System.out.println(postID); 
	 %>
	
</body>
</html>	