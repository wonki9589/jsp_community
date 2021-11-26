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

<title>계정 찾기(이메일)</title>
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
	<h3> 계정 찾기</h3>
	<hr />
	
		<h6 style="text-align : center; margin:40px;0px; 40px; 0px;">회원가입시 입력한 이메일 주소를 입력해주세요</h6>
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon1">Email</span>
			</div>
			<input type="text" class="form-control" placeholder="이메일을 입력해 주세요"
				aria-label="Userid" aria-describedby="basic-addon1">
		</div>
		
		
	<div class="seachBtn"> 
	<button type="button" class="btn btn-secondary" style="float:left;  width: 30%; margin-right: 100px;"><a href="pwd.jsp">계정 찾기</a></button>
		<button type="button" class="btn btn-secondary" style=" width: 30%;"><a href="login.jsp">취소</a></button>
	
	</div>



	
	</div>
	<!-- 로그인 폼 -->
	
</body>
</html>