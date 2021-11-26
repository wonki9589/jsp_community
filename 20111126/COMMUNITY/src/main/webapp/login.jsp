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

<title>코딩 커뮤니티 사이트</title>
</head>
<body>

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
	
<!--  navbar  -->
			
		


	<div class="container1">
	<form method="post" action="loginAction.jsp">
	<h3> 로그인</h3>
	<hr />
	
	
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon1">id</span>
			</div>
			<input type="text" class="form-control" placeholder="ID"
				aria-label="Userid" aria-describedby="basic-addon1"  name="userid"
				maxlength="20">
		</div>
		
		
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon1">pw</span>
			</div>
			<input type="text" class="form-control" placeholder="Password"
				aria-label="password" aria-describedby="basic-addon1"  name="password"
				maxlength="20">
		</div>

		 <label><input type="checkbox" name="color" value="blue"> 로그인 유지</label>
		 <div class="submitBtn">
		 
		 <button type="submit"  class="btn btn-secondary" style="width:100%;">로그인</button>
		 </div>
	
		<div class="searchInfo">
		<a href="email.jsp" style="margin:5%; ">계정 찾기</a>
		<a href="join.jsp" style="margin:5%;">회원 가입</a>
		</div>
		</form>
	</div>
	<!-- 로그인 폼 -->
	
</body>
</html>