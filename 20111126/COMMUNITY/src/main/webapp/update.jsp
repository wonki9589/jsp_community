<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.io.PrintWriter" %>
<%@ page import  ="java.io.PrintWriter"%>
<%@ page import  ="bbs.NewsBbs"%>
<%@ page import  ="bbs.NewsBbsDAO"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale ="1" >
<!-- 부트스트랩 4.6  -->

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/bbs.css">

<!--  -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<title>코딩 커뮤니티 사이트</title>
</head>
<body>
	<%
	 String userID = null;
	if(session.getAttribute("userid") != null){
		userID = (String) session.getAttribute("userid");
	}
	//유저아이디 세션값 가져옴 
	%>
	

		<%
			if(userID == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('로그인 해주세요 .')");
				script.println("location.href='login.jsp'");
				script.println("</script>");
			}	
				/* 로그인안된사람이 보는 화면  */
				
				
				int postID = 0;
				if(request.getParameter("post_id") != null){		
					postID = Integer.parseInt(request.getParameter("post_id"));
					
				}
				
				if(postID == 0){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('유효하지 않은 글 입니다 .')");
					script.println("location.href='newsBbs.jsp'");
					script.println("</script>");
					
				}
				NewsBbs newsbbs = new NewsBbsDAO().getBbs(postID);
				if(!userID.equals(newsbbs.getUSER_ID() )){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('권한이 없습니다 .')");
					script.println("location.href='newsBbs.jsp'");
					script.println("</script>");
				}
			
				 
				
		%>
	<div class="container">
			<a href="main.jsp"> <img src="#" alt="dds" /></a>
		<nav class="navbar navbar-expand-lg navbar-light">
		
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo01"
				aria-controls="navbarTogglerDemo01" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

				

				<ul class="nav">
					<ul class="nav flex-low ">
						<button type="button" class="btn btn-primary btn-sm"><a href="login.jsp">로그인</a>
							</button>
						<button type="button" class="btn btn-secondary btn-sm"><a href="join.jsp">회원가입</a>
						</button>		
					</ul>
					
					<ul class="nav flex-column">

						<li class="nav-item"><a class="nav-link active" href="newsBbs.jsp">NEWS</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Q&A</a></li>
						<li class="nav-item"><a class="nav-link" href="#">커뮤니티</a></li>

						<form class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">Search</button>
						</form>
					</ul>
				</ul>
			</div>
		</nav>
	</div>
	
	
			
			
			
	
			<!--  navbar  -->

	<div class="container3">
	 
	 <div class="col-lg-12">
	
		<form class="was-validated" method="post" action="updateAction.jsp?post_id<%= postID %>">
		
			<div class="mb-3">

			
				
				 <label for="exampleDataList" class="form-label">
				</label>
					 <select id="page" class="form-control" name="page" size="1" >
			<option value=""><%= newsbbs.getCategory_id() %></option>
            <option value="">게시판을 선택해 주세요</option>
            <option value="News page">News page</option>
            <option value="Q&A page">Q&A page</option>
            <option value="Community page">Community page</option>
          
        </select>
			

				<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">
						</label>
						 <input type="text" class="form-control"
								id="exampleFormControlInput1" name="title" value=<%= newsbbs.getTitle() %>>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlTextarea1" class="form-label">
						</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="8"name="content"><%= newsbbs.getTitle() %></textarea>
				</div>
			

			</div>
			<div class="mb-3">
				<div class="writeSubmitBtn">
				<input type="submit" value="글수정" />
				</div>
				
			
			

			</div>
		</form>
		
		</div>
	</div>
	
	