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
			</div>
					<% 
				}
			%>
			
			<!--  navbar  -->
			
		


    
    <div class="container3">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive project-list">
                        <table class="table project-table table-centered table-nowrap">
                        <!--  title -->
                            <thead>
                                <tr >
                                    <th scope="col">번 호</th>
                                    <th scope="col">제 목</th>
                                    <th scope="col">작 성 자</th>
                                    <th scope="col">작 성 일</th>
                                   
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>New admin Design</td>
                                    <td>02/5/2019</td>
                                    <td> dsadas</td >  
                                </tr>
                                
                                 <tr>
                                    <th scope="row">1</th>
                                    <td>New admin Design</td>
                                    <td>02/5/2019</td>
                                    <td> dsadas</td >  
                                </tr>
                                
                                 <tr>
                                    <th scope="row">1</th>
                                    <td>New admin Design</td>
                                    <td>02/5/2019</td>
                                    <td> dsadas</td >  
                                </tr>
                
                            </tbody>
                        </table>
                    </div>
                    <!-- table -->
                    
                    
                    

                    <div class="pt-3">
                        <ul class="pagination justify-content-end mb-0">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
  
    <!-- 이전 / 다음 페이지 버튼 -->

			
		

</body>
</html>
			
			
			
			

			