<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Auctionary 회원간단등록</title>


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
* {
	font-family: 'Dongle', sans-serif;
	font-family: 'Gowun Batang', serif;
	font-family: 'Gowun Dodum', sans-serif;
	text-decoration-line: none;
}

.input-form {
	max-width: 680px;
	margin-top: 10px;
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
</head>
<body>
<br>
	<h3 align="center">회원등록</h3>
	<form method="post" action="/infra/member/memberInstAdmin">

		<div class="container">
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">

					<div class="row">
						<div class="col-md-6 mb-3">
							<input type="text" name="ifmmName" placeholder="이름"> 
							<input
								type="text" name="ifmmNickname" placeholder="닉네임">
						</div>
					</div>
								<div class="row">
						<div class="col-md-6 mb-3">
						<input
								type="text" name="ifmmId" placeholder="아이디"> 
							<input type="text" name="ifmmPassword" placeholder="비밀번호">  
							<br>
						</div>
					</div>
							<div class="row">
						<div class="col-md-6 mb-3">
						
										
					<select name="ifmmGenderCd">
								<option value=""> 성별</option>
								<option value="3"> 남성 </option>
								<option value="4"> 여성 </option>
							</select> 

							<input type="text" id="ifmmDob" name="ifmmDob" placeholder="생년월일 1991-09-07"
							value="<c:out value="${item.ifmmDob }"/>">  
							<br>
						</div>
					</div>
		
					<div class="row">
						<div class="col-md-6 mb-3">
							<select  id="ifmpTelecomCd" name="ifmpTelecomCd">
								<option value="">통신사</option>
								<option value="28">SKT</option>
								<option value="29">KT</option>
								<option value="30">LGU</option>
								<option value="31">기타</option>
								</select>
								 <input type="text" name="ifmpNumber" placeholder="연락처">
						</div>
					</div>
					<button class="btn btn-primary btn-sm btn-block" type="submit">가입
						완료</button>
				</div>
			</div>
		</div>
	</form>


	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 2022 Auctionary</p>
	</footer>

</body>
</html>

