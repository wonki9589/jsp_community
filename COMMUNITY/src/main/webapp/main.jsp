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
						<button type="button" class="btn btn-secondary btn-sm">회원가입
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
			<p>
			본문들어갈 부분 나중에 작업  
			</p>
		
		</div>


	
</body>
</html>