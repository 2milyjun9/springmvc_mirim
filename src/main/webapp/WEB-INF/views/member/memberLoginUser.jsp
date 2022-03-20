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

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


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
a { /*링크 줄안가게하기*/
	text-decoration: none;
}

* {
	font-family: 'Dongle', sans-serif;
	font-family: 'Gowun Batang', serif;
	font-family: 'Gowun Dodum', sans-serif;
	text-decoration-line: none;
}

body {
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 500px;
	margin-top: 30px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>

<title>Auctionary 사용자로그인</title>
</head>
<body>


	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<a href="../main/mainUser">
				<img src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"
					class="rounded mx-auto d-block" alt="..." width="200px"
					height="100px"></a> <br> <br>
				<form class="validation-form" novalidate>
					<div class="mb-3">
						<label for="exampleDropdownFormEmail1" class="form-label">아이디</label>
						<input type="email" class="form-control"
							id="exampleDropdownFormEmail1" placeholder="">
					</div>
					<div class="mb-3">
						<label for="exampleDropdownFormPassword1" class="form-label">패스워드</label>
						<input type="password" class="form-control"
							id="exampleDropdownFormPassword1" placeholder="영문/숫자/특수문자포함 8자이상">
					</div>
					<div class="mb-3">
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="dropdownCheck"> <label class="form-check-label"
								for="dropdownCheck"> 아이디저장 </label>
						</div>
					</div>
					<div class="row text-center" style="width: 100%">
						<div style="width: 100%; float: none; margin: 0 auto">

							<button type="submit" class="btn btn-primary">로그인</button>
						</div>
					</div>
					<br> <br>
					<div class="col-md-6 mb-3"></div>
					<button class="btn btn-warning btn-lg btn-block" type="submit">Kakao
						로그인</button>
					<button class="btn btn-primary btn-lg btn-block" type="submit">Facebook
						로그인</button>
					<button class="btn btn-success btn-lg btn-block" type="submit">Naver
						로그인</button>
					<br> <br>
					<div class="row text-right" style="width: 100%">
						<div style="width: 100%; float: none; margin: 0 auto">
							<a href="memberFormUser"> 회원가입 </a> <br> <a
								href="../main/mainUser"> 상품 먼저 둘러보기 </a> <br> <a
								href="..."> 아이디/비밀번호찾기 </a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>

	<!--  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>



</body>
</html>