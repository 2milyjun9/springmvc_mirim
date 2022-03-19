<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="shortcut icon" type="image/x-icon"
	href="../../../images/golf3.png">

<!-- 아이콘 어썸폰트-->
<script src="https://kit.fontawesome.com/0bd8c4f8de.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gowun+Batang&family=Gowun+Dodum&display=swap"
	rel="stylesheet">


<style>
* {
	font-family: 'Dongle', sans-serif;
	font-family: 'Gowun Batang', serif;
	font-family: 'Gowun Dodum', sans-serif;
	text-decoration-line: none;
}

body {
	width: 80%;
	float: none;
	margin: 0 auto;
}

#login {
	float: right;
}

/* Modal Content/Box */
.modal-content {
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 20%; /* Could be more or less, depending on screen size */
}

a { /*링크 줄안가게하기*/
	text-decoration: none;
}
</style>

<title>Auctionary Main</title>
</head>

<body>

	<!-- 웹버전로고 -->
	<div class="d-none d-xl-block ">
		<a href="./mainUser"> <img src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"
			class="rounded mx-auto d-block" 
			alt="..." width="400px" height="200px"></a> <br> <br> <br>
	</div>

	<!-- 모바일버전로고 -->
	<div class=" d-lg-block d-xl-none">
		<a href="./mainUser"> <img src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"
			class="rounded mx-auto d-block" alt="..." width="200px"
			height="100px"></a>
	</div>
	
	  
	  

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">카테고리</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="#">Action</a></li>
						<li><a class="dropdown-item" href="#">Another action</a></li>
						<li><a class="dropdown-item" href="#">Something else here</a></li>
					</ul>
				</div>
				<input class="form-control me-2" type="search" placeholder="상품명"
					aria-label="Search">
				<button class="btn btn-outline-primary" type="submit">Search</button>
			</form>
			<div align="right">
				<ul class=" navbar-nav me-auto my-2 my-lg-0
				navbar-nav-scroll"
					style="-bs-scroll-height: 100px;">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarScrollingDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <i
							class="fas fa-user"> </i>
					</a>
						<ul class="dropdown-menu"
							aria-labelledby="navbarScrollingDropdown">
							<li><a class="dropdown-item" href="../member/memberLoginUser">로그인</a></li>
							<li><a class="dropdown-item" href="../member/memberFormUser">회원가입</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">로그아웃?뭐쓰지</a></li>
						</ul></li>

					<button type="button" class="btn btn-secondary position-relative">
						<i class="fas fa-comment"></i> <span
							class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle">
							<span class="visually-hidden"> New alerts</span>
						</span>
					</button>
				</ul>
			</div>
		</div>
	</nav>

	<br>
	<br>
	<br>

	<div class="dropdown">
		<button class="btn btn-primary dropdown-toggle" type="button"
			id="dropdownMenuButton2" data-bs-toggle="dropdown"
			aria-expanded="false">정렬 순</button>
		<ul class="dropdown-menu dropdown-menu-dark"
			aria-labelledby="dropdownMenuButton2">
			<li><a class="dropdown-item active" href="#">마감임박순</a></li>
			<li><a class="dropdown-item" href="#">최저가순</a></li>
			<li><a class="dropdown-item" href="#">최고가순</a></li>
			<li><hr class="dropdown-divider"></li>
			<li><a class="dropdown-item" href="#">전체매물보기</a></li>
		</ul>
	</div>
	<br>
	<!--   <div class="d-none d-xl-block "> 모바일버전감춤 -->

	<div class="row row-cols-1 row-cols-md-3 g-4">
		<div class="col">
			<div class="card">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="card">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
			</div>
		</div>
	</div>


	<br>
	<br>

	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled"><a class="page-link">Previous</a>
			</li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</nav>

	<div class="d-none d-xl-block ">
		<!-- The Modal -->
		<div id="myModal" class="modal">
			<!-- Modal content -->
			<div class="modal-content">
				<p style="text-align: center;">
					<b><span style="font-size: 20pt;"> HOT TODAY</span></b> <br> <span
						style="font-size: 14pt;"> 현재 최다누적ㅇㅇ건</span>
				</p>
				<p style="text-align: center; line-height: 1.5;">
					<br /> <a href=""><img src="${pageContext.request.contextPath}/resources/xdmin/images/shoes.png"
						class="d-block w-100" alt="..."> </a>
				</p>
				<p>
					<br />
				</p>
				<div style="text-align: center; text-color: white;"
					onClick="close_pop();">
					<span class="pop_bt" style="font-size: 13pt;"> <a href="">
							<button type="button" class="btn btn-primary">바로가기</button>
					</a>
					</span> <span class="pop_bt" style="font-size: 13pt;">
						<button type="button" class="btn btn-secondary">닫기</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	<!--End Modal-->



	<br>
	<br>
	<br>

	<!--  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			$('#myModal').show();
		});
		//팝업 Close 기능
		function close_pop(flag) {
			$('#myModal').hide();
		};
	</script>



</body>
</html>