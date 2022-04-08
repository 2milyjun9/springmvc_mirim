<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/>


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
<script src="https://kit.fontawesome.com/0bd8c4f8de.js" crossorigin="anonymous"></script>
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

/* Navbar*/
.navbar-brand {
	padding-top: .75rem;
	padding-bottom: .75rem;
	font-size: 1rem;
}

.navbar .navbar-toggler {
	top: .25rem;
	right: 1rem;
}

.addScroll {
	overflow-y: auto;
	height : 90px;
    background-color: gainsboro;
}

.input-file-button {
	padding : auto;
	cursor : pointer;
}

</style>
</head>

</head>

<body>

	<header
		class="navbar navbar-dark sticky-top bg-secondary text-white flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3"
			href="../main/mainAdmin"> Auctionary</a>
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

	<form id="formList" name="formList" method="post" action="/infra/member/memberInstAdmin" enctype="multipart/form-data">

		<!-- 기본값히든처리 -->
		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
		<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${vo.ifmmSeq}"/>">
		<input type="hidden" id="shIfmmDelNy" name="shIfmmDelNy" value="<c:out value="${vo.shIfmmDelNy}"/>">
		<input type="hidden" id="shIfmmName" name="shIfmmName" value="<c:out value="${vo.shIfmmName}"/>">
		<input type="hidden" id="shMemberOption" name="shMemberOption" value="<c:out value="${vo.shMemberOption}"/>">
		<input type="hidden" id="shMemberValue" name="shMemberValue" value="<c:out value="${vo.shMemberValue}"/>">
		
		<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
		
			<div class="container">
			
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">
						<div class="row">
							<div class="col-md-6 mb-3">
								<label>이름</label> <input type="text" class="form-control"
									name="ifmmName" placeholder="" value="" required>
								<div class="invalid-feedback">이름을 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>아이디</label> <input type="text" class="form-control"
									name="ifmmId" placeholder="" value="" required>
								<div class="invalid-feedback">아이디를 입력해주세요.</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label>비밀번호</label> <input type="password" class="form-control"
									name="ifmmPassword" placeholder="" value="" required>
								<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>비밀번호확인</label> <input type="password"
									class="form-control" placeholder="" value="" required>
								<div class="invalid-feedback">비밀번호를 재차 입력해주세요.</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label>닉네임</label> <input type="text" class="form-control"
									id="name" name="ifmmNickname" placeholder="" value="" required>
								<div class="invalid-feedback">닉네임을 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>성별</label>
								
				<select class="custom-select d-block w-100" name="ifmmGenderCd" required>
									<option value="3">남성</option>
									<option value="4">여성</option>
								</select> 
								
<%-- 					<select id="ifmmGenderCd" name="ifmmGenderCd" class="custom-select d-block w-100">
										<option value="">성별</option>
											<c:forEach items="${listCodeGender}" var="itemGender" varStatus="statusGender">
		 										<option value="<c:out value="${itemGender.ifcdSeq}"/>"
													<c:if test="${rt.ifmmGenderCd eq itemGender.ifcdSeq}">selected</c:if>>
													<c:out value="${itemGender.ifcdName}"/>
												</option>
											</c:forEach>
									</select> --%>
									
<%-- 						<select class="custom-select d-block w-100" id="ifmmGenderCd" name="ifmmGenderCd">
							<option value="">성별</option>
							<c:forEach items="${codeGender}" var="itemGender" varStatus="statusGender">
								<option value="<c:out value="${itemGender.ifcdSeq}"/>"
									<c:if test="${rt.ifmmGenderCd eq itemGender.ifcdSeq}">selected</c:if>>
									<c:out value="${itemGender.ifcdName}" /></option>
							</c:forEach>
				</select>  
				 --%>
				
								<div class="invalid-feedback">성별 선택해주세요.</div>
							</div>
						</div>
						
<%-- 							<div class="row">
					<div class="col-md-6 mb-3">
					
				<select class="form-select form-select-sm" id="ifmpTelecomCd" name="ifmpTelecomCd">
							<option value="">통신사</option>
							<c:forEach items="${codeTelecom}" var="itemTelecom" varStatus="statusTelecom">
								<option value="<c:out value="${itemTelecom.ifcdSeq}"/>"
									<c:if test="${item.ifmpTelecomCd eq itemTelecom.ifcdSeq}">selected</c:if>><c:out
										value="${itemGender.ifcdName}" /></option>
							</c:forEach>
						</select>  
						
						<br> 
						<input class="form-control" type="text" id="ifmpNumber" name="ifmpNumber" placeholder="휴대폰번호 '-'를 빼고적어주세요"
							value="<c:out value="${item.ifmpNumber }"/>"> <br>
					</div>
				</div> --%>
				
				
						<div class="row">
							<div class="col-md-6 mb-3">
								<label>통신사</label> <select class="custom-select d-block w-100"
									name="ifmpTelecomCd">
									<option value="28">SKT</option>
									<option value="29">KT</option>
									<option value="30">LGU</option>
									<option value="31">기타</option>
								</select>
								<div class="invalid-feedback">통신사를 선택해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>휴대폰번호
									<button type="button" class="btn btn-primary btn-sm">인증</button>
								</label> 
								
								<input type="hidden" class="form-control" id="ifmpDefaultNy"  name="ifmpDefaultNy" value="1">
								<input type="hidden" class="form-control" id="ifmpTypeCd"  name="ifmpTypeCd" value="21"> 
								<input type="text" class="form-control" name="ifmpNumber" placeholder="" required>
								<div class="invalid-feedback">휴대폰번호를 입력해주세요.</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-6 mb-3">
								<label>이메일</label> 
								<input type="hidden" class="form-control"  id="ifmeDefaultNy"  name="ifmeDefaultNy" value="1">
								<input type="hidden" class="form-control"  id="ifmeTypeCd"  name="ifmeTypeCd" value="14">
								<input type="email" class="form-control"
									name="ifmeEmailFull" placeholder="you@example.com" required>
								<div class="invalid-feedback">이메일을 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>생년월일<span class="text-muted">&nbsp;</span></label> 
								
								<input class="form-control" type="text" id="ifmmDob" name="ifmmDob" 
								autocomplete="off" placeholder="" required value="<c:out value="${item.ifmmDob }"/>">
								<div class="invalid-feedback" >생년월일을 입력해주세요.</div>
							</div>
						</div>
						<br>
				
										<div class="row">
			<!-- 								<div class="col-md-6 mb-3">
												<label>국적</label> <select
													class="custom-select d-block w-100" name="ifnaName">
													<option value="">대한민국</option>
													<option value="">미국</option>
													<option value="">일본</option>
												</select>

											</div> -->
											<div class="col-md-6 mb-3">
												<label>결혼여부</label> <select
													class="custom-select d-block w-100" name="ifmmMarriageCd">
				
													<option value="13">미혼</option>
													<option value="12">기혼</option>
												</select>
											</div>


												<div class="col-md-6 mb-3">
													<label>자녀수</label> <input type="text" class="form-control"
														name="ifmmChildrenNum">

												</div>
<%-- 												<div class="col-md-6 mb-3">
													<label>결혼기념일<span class="text-muted">&nbsp;</span></label>
															<input class="form-control" type="text" id="ifmmMarriageDate"
							name="ifmmMarriageDate" autocomplete="off" placeholder="결혼기념일"  value="<c:out value="${item.ifmmMarriagDate }"/>">
												</div> --%>
												
												
											</div>
											<div class="row">
												<div class="col-md-6 mb-3">
													<label>좋아하는 색깔</label> <input type="text"
														class="form-control" placeholder=""
														name="ifmmFavoriteColor">
												</div>

												<div class="col-md-6 mb-3">
													<label>우편번호</label> 
												<!-- 	<input type="hidden" class="form-control"  id="ifmaDefaultNyArray0"  name="ifmaDefaultNyArray" value="1">
													<input type="hidden" class="form-control" id="ifmaTypeCdArray0"  name="ifmaTypeCdArray" value="14">
													<input type="hidden" class="form-control" id="ifmaTitleArray0"  name="ifmaTitleArray" value=""> -->
													<input type="hidden" class="form-control"  id="ifmaDefaultNy"  name="ifmaDefaultNy" value="1">
													<input type="hidden" class="form-control" id="ifmaTypeCd"  name="ifmaTypeCd" value="14">
													<input type="hidden" class="form-control" id="ifmaTitle"  name="ifmaTitle" value=""> 
													<input type="text" class="form-control"
														placeholder="우편번호찾기 클릭" id="ifmaZipcode"  name="ifmaZipcode" value="" 
														 onclick="sample6_execDaumPostcode()">
														 
														 
														<!--   선생님 샘플
														<button type="button" id="btnAddress" class="btn btn-outline-secondary"> <i class="fas fa-search"></i></button>
														 <button type="button" id="btnAddressClear" class="btn btn-outline-secondary"> <i class="fa-solid fa-x"></i></button>
														 <input type="text" id="ifmaAddress1Array0" name="ifmaAddress1Array" 
														 value="" placeholder="주소" class="form-control form-conrol-sm mt-2" readonly>
														 <input type="text" id="ifmaAddress2Array0" name="ifmaAddress2Array" 
														 value="" placeholder="상세주소"  maxlength="50" class="form-control form-conrol-sm mt-2" >  -->
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6 mb-3">
												<label>주소</label>
												<!--  <input type="text" class="form-control"
													 id="ifmaAddress1Array0" name="ifmaAddress1Array"  placeholder="주소" value="" readonly> -->
													<input type="hidden" class="form-control"  id="ifmeDefaultNy"  name="ifmeDefaultNy" value="1">
													<input type="hidden" class="form-control"  id="ifmeTypeCd"  name="ifmeTypeCd" value="44">
													 <input type="text" class="form-control"
													 id="ifmaAddress1" name="ifmaAddress1"  placeholder="주소" value="" readonly>

											</div>
											<div class="col-md-6 mb-3">
												<label>상세주소<span class="text-muted">&nbsp;</span></label> <!-- <input
													type="text" class="form-control" 
													id="ifmaAddress2Array0"  name="ifmaAddress2Array" placeholder="상세주소" maxlength="50" value=""> -->
													<input type="text" class="form-control"  
													id="ifmaAddress2"  name="ifmaAddress2" placeholder="상세주소" maxlength="50" value="">
											</div>
										</div>


										<div class="row">
											<div class="col-md-6 mb-3">
												<label>위도</label>
													 <input type="text" class="form-control" id="ifmaLat" name="ifmaLat" placeholder="위도" value="" >

											</div>
											<div class="col-md-6 mb-3">
												<label>경도</label> 
													<input type="text" class="form-control"  id="ifmaLng"  name="ifmaLng" placeholder="경도"  value="" >
											</div>
										</div>



										<div class="row">
											<div class="col-md-6 mb-3" >
												<label>SNS/홈페이지</label> 
													<input type="hidden" class="form-control"  id="ifaoDefaultNy"  name="ifaoDefaultNy" value="1">
												<select
													class="custom-select d-block w-100" name="ifaoSnsTypeCd">
			<!-- 										<option selected>선택</option> -->
													<option value="34">페이스북</option>
													<option value="35">인스타그램</option>
													<option value="36">트위터</option>
													<option value="37">카카오톡</option>
									
												</select>
								
	
											</div>
											<div class="col-md-6 mb-3">
												<label>SNS/홈페이지 계정</label> <input type="text"
													class="form-control" name="ifaoUrl" placeholder="">
											</div>
										</div>
								<!-- 		<div class="row">
											<div class="col">
												<br> 취미 <br>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckDefault">
														영화감상 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckChecked" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckChecked">
														골프 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckDefault">
														음악감상 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckChecked" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckChecked">
														트레킹 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckDefault">
														서핑 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckChecked" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckChecked">
														피아노 </label>
												</div>
											</div>
										</div> -->
								
					
									<div class="row">
											<div class="col-md-6 mb-3" >
												<label for="file0" class="form-label input-file-button">이미지 첨부</label> 
												<input  class="form-control" id="file0" name="file0" type="file" 
												multiple="multiple" style="display:none;" onChange="upload(0,2);">
											<div class="addScroll">
											<ul id="ulFile0" class="list-group"></ul>
											</div>
										</div>
		
										
									<div class="col-md-6 mb-3" >
												<label for="file1" class="form-label input-file-button">파일 첨부 </label> 
												<input  class="form-control" id="file1" name="file1" type="file" 
												multiple="multiple" style="display:none;" onChange="upload(1,1);">
											<div class="addScroll">
											<ul id="ulFile1" class="list-group"></ul>
											</div>
										</div>
									</div>
									
								</div>
						<br>

						<div class="row">
							<div class="col">
								모바일마케팅 수신동의
								<div class="form-check form-check-inline">
								
								<input type="hidden" id="ifmmSmsConsentNy" name="ifmmSmsConsentNy" value="1">
								
								<input class="form-check-input" type="radio" id="ifmmSmsConsent" name="ifmmSmsConsent" 
								<c:if test="${item.ifmmEmailConsentNy eq 1 }"> checked </c:if>>
								<label
										class="form-check-label" for="flexRadioDefault5"> YES
									</label>
									
								</div>
								<div class="form-check form-check-inline">
								
								<input type="hidden" id="ifmmSmsConsentNy" name="ifmmSmsConsentNy" value="0">
								
								<input class="form-check-input" type="radio" id="ifmmSmsConsent" name="ifmmSmsConsent" 
								<c:if test="${item.ifmmEmailConsentNy eq 0 }"> checked </c:if>>
								<label
										class="form-check-label" for="flexRadioDefault5"> NO
									</label>
									
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col">
								이메일마케팅 수신동의

									<div class="form-check form-check-inline">
								<input type="hidden" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="0">

								<input class="form-check-input" type="radio" id="ifmmEmailConsent" name="ifmmEmailConsent" 
								<c:if test="${item.ifmmEmailConsentNy eq 0 }"> checked </c:if>>
								<label
										class="form-check-label" for="flexRadioDefault6"> YES
									</label>
								</div>
								
									<div class="form-check form-check-inline">
								<input type="hidden" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="1">

								<input class="form-check-input" type="radio" id="ifmmEmailConsent" name="ifmmEmailConsent" 
								<c:if test="${item.ifmmEmailConsentNy eq 1 }"> checked </c:if>>
								<label
										class="form-check-label" for="flexRadioDefault6"> NO
									</label>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col">
								개인정보수집기간
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="6"> <label class="form-check-label"
										for="flexRadioDefault5">1년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="7"> <label class="form-check-label"
										for="flexRadioDefault6"> 2년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="8"> <label class="form-check-label"
										for="flexRadioDefault6"> 3년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="9"> <label class="form-check-label"
										for="flexRadioDefault6">5년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="10"> <label class="form-check-label"
										for="flexRadioDefault6">10년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="11"> <label class="form-check-label"
										for="flexRadioDefault6">탈퇴시 </label>
								</div>
							</div>
						</div>
						<br> <br>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="aggrement" required> <label
								class="custom-control-label" for="aggrement">개인정보 수집 및
								이용에 동의합니다.</label>
						</div>
						<br>
		<!--지도 <div id="map" style="width:500px;height:400px;"></div> -->
	
		<div class="row text-center" style="width: 100%">
			<div style="width: 100%; float: none; margin: 0 auto">
				
				<a href="javascript:goMemberList();"> <button type="button" class="btn btn-sm btn-outline-secondary"> 목록 </button></a>
				<button type="submit" class="btn btn-sm btn-outline-primary" id="btnSubmit">등록 </button>
					
					
				</div>
			</div>
		</form>
	</main>
	

	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 2022 Auctionary</p>
	</footer>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/infra/resources/common/js/validation.js"></script>
			
			<!-- jquery ui -->
		<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
			
	
	
	<script type="text/javascript">
		$("#btnSubmit").on("click", function() {
			if (!checkId($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력 해 주세요!"))
				retrun
			false;
		});
	</script>

	<script type="text/javascript">
			goMemberList = function(){
				$("#formList").attr("action", "/infra/member/memberList");
				$("#formList").submit();
			};
	</script>
			
		
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
		
		<script type="text/javascript">
		$(document).ready(function() {
			$("#ifmmMarriageDate").datepicker();
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
	
	
			<!--  	다음 맵 api 키값 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b6917d9a0f917a910b27b8ae0c84814b&libraries=services"></script>	

<!-- 	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>  -->
	
	
		<!--  우편주소,주소창 다음api  -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
 function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
            	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                   
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                 }
                 // 건물명이 있고, 공동주택일 경우 추가한다.
                 if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                 }
                 // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                 if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                 }
                 // 조합된 참고항목을 해당 필드에 넣는다.
                 document.getElementById("ifmaAddress2").value = extraAddr;
                
                } else {
                    document.getElementById("ifmaAddress2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('ifmaZipcode').value = data.zonecode;
                document.getElementById("ifmaAddress1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("ifmaAddress2").focus();
                
				/* lat and lng from address s */
 				
				// 주소-좌표 변환 객체를 생성
				var geocoder = new daum.maps.services.Geocoder();
				
				// 주소로 좌표를 검색
				geocoder.addressSearch(addr, function(result, status) {
				 
					// 정상적으로 검색이 완료됐으면,
					if (status == daum.maps.services.Status.OK) {
						
						document.getElementById("ifmaLat").value=result[0].x;
						document.getElementById("ifmaLng").value=result[0].y;
/* 						
						var coords = new daum.maps.LatLng(result[0].y, result[0].x);
				
						y = result[0].x;
						x = result[0].y;
				
						// 결과값으로 받은 위치를 마커로 표시합니다.
						var marker = new daum.maps.Marker({
							map: map,
							position: coords
						});
				
						// 인포윈도우로 장소에 대한 설명표시
						var infowindow = new daum.maps.InfoWindow({
							content: '<div style="width:150px;text-align:center;padding:5px 0;">좌표위치</div>'
						});
				
						infowindow.open(map,marker);
				
						// 지도 중심을 이동
						map.setCenter(coords);
						
						document.getElementById("ifmaLatArray0").value=x;
						document.getElementById("ifmaLngArray0").value=y;
 */						
					}
				});
				/* lat and lng from address e */
            }
        }).open();       	
    }
</script>   


	<script src="/infra/resources/common/js/commonXdmin.js"></script>
	<script src="/infra/resources/common/js/constantsXdmin.js"></script>
	<script src="/infra/resources/common/js/common.js"></script>

		<script type="text/javascript">
		
		upload = function(seq,div){
			
		$("#ulFile"+ seq).children().remove();
		
		var fileCount = $("input[type=file]")[seq].files.length;
		
		if(checkUploadedTotalFileNumber(fileCount,seq) == false) {return false;}
		
		var totalFileSize;
		for (var i = 0; i < fileCount; i++){
			if(div == 1){
				if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name,seq)==false) {return false;}
			}else if (div == 2){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name,seq)==false) {return false;}
			}else{
				return false;
			}
			
			if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name,seq)==false) {return false;}
			totalFileSize += $("input[type=file]")[seq].files[i].size;
		}
		if(checkUploadedTotalFileSize(totalFileSize,seq)==false) {return false;}
		
		for (var i = 0 ; i<fileCount ; i ++){
			addUploadLi(seq,i,$("input[type=file]")[seq].files[i].name);
		}
		}	
		
		addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id= "li_  '+ seq +'_' + index + ' "class="list-group-item d-flex justify-content-between align-items-center"> ';
			li = li + name; 
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi(' + seq + ',' +  index + ')"><i class="fa-solid fa-x" style="cursor : pointer;"></i></span>';
			li = li + '</li>';

			$("#ulFile" + seq).append(li);
		}
		
			delLi = function (seq,index){
			$("#li_" + seq +"_"+index).remove();
		}
			
		addUploadLi = function (seq, index, name){
	
			var ul_list = $("#ulFile1");
			
			li = '<li id="li_'+seq+'_'+index+'"class="list-group-item d-flex justify-content-between align-items-center"> ';
			li = li + name; 
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+  index +')"><i class="fa-solid fa-x" style="cursor : pointer;"></i></span>';
			li = li + '</li>';

			$("#ulFile"+seq).append(li);
		}
		
			delLi = function(seq,index){
			$("#li_" +seq+"_"+index).remove();
		}
			
			
		</script> 
		
				
		
</body>
</html>
