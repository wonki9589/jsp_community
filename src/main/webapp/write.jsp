<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  


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
	
		<form class="was-validated" method="post" action="writeAction.jsp">
		
			<div class="mb-3">

			
				
				 <label for="exampleDataList" class="form-label">
				</label> <input type="text" class="form-control" list="datalistOptions"
					id="exampleDataList" name="Category_id" placeholder="게시판을 선택해 주세요 ">
				<datalist id="datalistOptions">
						<option value="News page">
						<option value="Q&A page">
						<option value="Community page">

				</datalist>

				<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">
						</label>
						 <input type="text" class="form-control"
								id="exampleFormControlInput1" name="title" placeholder="제목을 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlTextarea1" class="form-label">
						</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="8"name="content" placeholder="내용을 입력해 주세요"></textarea>
				</div>
			

			</div>
			<div class="mb-3">
				<div class="writeSubmitBtn">
				<input type="submit" value="등 록" />
				</div>
			</div>
		</form>
		
		</div>
	</div>
	
	