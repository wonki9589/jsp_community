<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.io.PrintWriter" %>
<%@ page import= "bbs.NewsBbs" %>
<%@ page import= "bbs.NewsBbsDAO" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale ="1" >
<!-- 부트스트랩 4.6  -->

<link rel="stylesheet" href="css/bootstrap.css?after">
<link rel="stylesheet" href="css/navbar.css?after">
<link rel="stylesheet" href="css/bbs.css?after">


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
	NewsBbs Bbs = new NewsBbsDAO().getBbs(postID);
	
	%>


		<%
			if(userID == null){
				/* 로그인안된사람이 보는 화면  */
				
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

						<li class="nav-item"><a class="nav-link active" href="#">NEWS</a>
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
	
	<%
				}
				else {		
					/* 로그인된 사람이보는화면 */
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
				
				
		
					<ul>
					
				<!-- 저장된 유저아이디 불러오는 부분 -->
					<h7><%= userID %> 님</h7>
					</ul>
					<ul class="nav flex-low ">
		
						<button type="button" class="btn btn-primary btn-sm"><a href="#">마이페이지</a>
							</button>
						<button type="button" class="btn btn-secondary btn-sm"><a href="logoutAction.jsp">로그아웃</a>
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
			</div>
					<% 
				}
			%>
			
			<!--  navbar  -->

	<div class="container3">
	 
	 <div class="col-lg-12">
	
		<form class="was-validated">
		
			<div class="viewComponent">
				
				
				<div class="viewCategory">
					<label for="exampleFormControlTextarea1" class="form-label">
						</label>
						<div class=form-control style="border-color: #28a745; "><%= Bbs.getCategory_id() %></div>
				   </div>
				
				
				
				<div class="viewTitle" >
							<label for="exampleFormControlInput1" class="form-label">
						</label>
						<div class=form-control style="border-color: #28a745; "><%= Bbs.getTitle() %></div>
				</div>
				
				
				
				<div class="viewContent">
					<label for="exampleFormControlTextarea1" class="form-label">
						</label>
					<div class=form-control style="border-color: #28a745; height:100%; "><%= Bbs.getContent() %></div>
				</div>
			
			
				<div class="viewBtn">
					<div class="writeSubmitBtn">
					<a href="newsBbs.jsp">목록</a>
				
			<%
				if(userID != null && userID.equals(Bbs.getUSER_ID()))  {
			%>
					<a href="update.jsp?post_id=<%= postID%>" class="writeSubmitBtn">수정</a>
					<a href="deleteAction.jsp?post_id=<%= postID%>" class="writeSubmitBtn">삭제</a>
			<%
				}
			%>
			</div>
				</div>
			</div>
		</form>
		
		
		</div>
	</div>
	
	