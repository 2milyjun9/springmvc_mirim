<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title> 회원등록</title>

<!-- 제이쿼리 ui CSS -->
<link
	href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">

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

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

body {
	font-size: .9rem;
}

.feather {
	width: 16px;
	height: 16px;
	vertical-align: text-bottom;
}

/*
 * Sidebar
*/
.sidebar {
	position: fixed;
	top: 0;
	/* rtl:raw:
  right: 0;
  */
	bottom: 0;
	/* rtl:remove */
	left: 0;
	z-index: 100; /* Behind the navbar */
	padding: 48px 0 0; /* Height of navbar */
	box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
	/*미림추가*/
	margin-left: 10px;
	font-size: .9rem;
	width: 120px;
}

@media ( max-width : 767.98px) {
	.sidebar {
		top: 5rem;
	}
}

.sidebar-sticky {
	position: relative;
	top: 0;
	height: calc(100vh - 48px);
	padding-top: .5rem;
	overflow-x: hidden;
	overflow-y: auto;
	/* Scrollable contents if viewport is shorter than content. */
}

.sidebar .nav-link {
	font-weight: 500;
	color: #333;
}

.sidebar .nav-link .feather {
	margin-right: 4px;
	color: #727272;
}

.sidebar .nav-link.active {
	color: #2470dc;
}

.sidebar .nav-link:hover .feather, .sidebar .nav-link.active .feather {
	color: inherit;
}

.sidebar-heading {
	font-size: .75rem;
	text-transform: uppercase;
}

/*
 * Navbar
 */
.navbar-brand {
	padding-top: .75rem;
	padding-bottom: .75rem;
	font-size: 1rem;
}

.navbar .navbar-toggler {
	top: .25rem;
	right: 1rem;
}
</style>
</head>

</head>

<body>

	<header
		class="navbar navbar-dark sticky-top bg-secondary text-white flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3"
			href="../main/main.html"> Auctionary</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</header>


	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3">
					<ul class="list-unstyled ps-0">
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#상품관리">상품관리</button>
							<div class="collapse" id="상품관리">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="../product/productList.html"
										class="link-dark rounded"> &nbsp; &nbsp;등록상품조회</a></li>
								</ul>
							</div>
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#회원관리">회원관리</button>
							<div class="collapse" id="회원관리">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="./memberList.html" class="link-dark rounded">
											&nbsp; &nbsp;회원조회</a></li>
									<li><a href="./memberEdit.html" class="link-dark rounded">
											&nbsp; &nbsp;회원수정</a></li>
								</ul>
							</div>
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#cs"
								aria-expanded="false">C/S</button>
							<div class="collapse" id="cs">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;고객센터</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;리뷰관리</a></li>
								</ul>
							</div>
						</li>
					</ul>
					<div class="dropdown border-top">
						<a href="#"
							class="d-flex align-items-center justify-content-center p-3 link-dark text-decoration-none dropdown-toggle"
							id="dropdownUser3" data-bs-toggle="dropdown"> <img
							src="https://github.com/mdo.png" alt="mdo" width="25" height="25"
							class="rounded-circle">
						</a>
						<ul class="dropdown-menu text-small shadow"
							aria-labelledby="dropdownUser3">
							<li><a class="dropdown-item" href="#">결재</a></li>
							<li><a class="dropdown-item" onclick="showPopup();">프로필수정</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">로그아웃</a></li>
						</ul>

					</div>
				</div>
			</nav>
		</div>
	</div>

	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h1 class="h2">&nbsp;회원등록</h1>


			<!-- 웹버전기본정보테이블//모바일감춤 -->
			<div class="d-none d-xl-block ">
				<div class="btn-group me-2">
					<button type="button" class="btn btn-sm btn-outline-success">엑셀</button>
				</div>
			</div>
		</div>


	<br>

	<form method="post" action="/infra/member/memberInstAdmin">
		<div class="container">

			<div class="input-form col-md-9 mx-auto">
				<br>
				<div class="row">
					<div class="col-md-12 mb-3">
						<input class="form-control" type="text" name="ifmmId"
							placeholder="아이디"> <br> <input class="form-control"
							type="text" name="ifmmPassword" placeholder="비밀번호">
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 mb-3">
						<input class="form-control" type="text" name="ifmmName"
							placeholder="이름"> <br> <input class="form-control"
							type="text" name="ifmmNickname" placeholder="닉네임">
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 mb-3">

						<select class="form-select form-select-sm" id="ifmmGenderCd"
							name="ifmmGenderCd">

							<option value="">성별</option>
							<c:forEach items="${codeGender}" var="itemGender"
								varStatus="statusGender">
								<option value="<c:out value="${itemGender.ifcdSeq}"/>"
									<c:if test="${item.ifmmGenderCd eq itemGender.ifcdSeq}">selected</c:if>>
									<c:out value="${itemGender.ifcdName}" /></option>
							</c:forEach>
						</select> <br> <input class="form-control" type="text" id="ifmmDob"
							name="ifmmDob" placeholder="생년월일"
							value="<c:out value="${item.ifmmDob}"/>">
					</div>
				</div>
				<!-- 						<div class="col-md-6 mb-3">
							<select  class="form-select form-select-sm" id="ifmpTelecomCd" name="ifmpTelecomCd">
								<option value="">통신사</option>
								<option value="28">SKT</option>
								<option value="29">KT</option>
								<option value="30">LGU</option>
								<option value="31">기타</option>
							</select> <input type="text" name="ifmpNumber" placeholder="연락처">
						</div> -->
				<div class="row">
					<div class="col-md-12 mb-3">
						<select class="form-select form-select-sm" id="ifmpTelecomCd"
							name="ifmpTelecomCd">
							<option value="">통신사</option>
							<c:forEach items="${codeTelecom}" var="itemTelecom"
								varStatus="statusTelecom">
								<option value="<c:out value="${itemTelecom.ifcdSeq}"/>"
									<c:if test="${item.ifmpTelecomCd eq itemTelecom.ifcdSeq}">selected</c:if>><c:out
										value="${itemGender.ifcdName}" /></option>
							</c:forEach>
						</select> <br> <input class="form-control" type="text" id="ifmpNumber"
							name="ifmpNumber" placeholder="휴대폰번호 '-'를 빼고적어주세요"
							value="<c:out value="${item.ifmpNumber }"/>"> <br>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 mb-3">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id=""
								required> <label class="custom-control-label"
								for="aggrement">개인정보 수집 및 이용에 동의합니다. </label>
						</div>
						<br>

					</div>
				</div>
				<div class="row">
					<div class="col-md-12 mb-3">
						<button class="btn btn-primary btn-sm btn-block" type="submit"
							id="btnSubmit">가입 완료</button>
					</div>
				</div>
			</div>
		</div>
	</form>


	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 2022 Auctionary</p>
	</footer>

	<!-- 검색 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	<script type="text/javascript">
		$("#btnSubmit").on("click", function() {
			if (!checkId($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력 해 주세요!"))
				retrun
			false;
		});
	</script>

	<!-- jquery ui -->
	<script
		src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	---
	<script type="text/javascript">
		$(document).ready(function() {
			$("#ifmmDob").datepicker();
		});

		$.datepicker.setDefaults({
			dateFormat : 'yy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : '년'
		});
	</script>
</body>
</html>
