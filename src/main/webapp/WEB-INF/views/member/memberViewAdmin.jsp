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
<title>Auctionary 회원뷰</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/dashboard/">

<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/0bd8c4f8de.js"
	crossorigin="anonymous"></script>

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"
	rel="stylesheet">

<!-- 주소창사진 -->
<link rel="shortcut icon" type="image/x-icon"
	href="../../../images/xdmin/logoA2.png">

<!-- 기본템플릿 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


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
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#리포트">리포트</button>
							<div class="collapse" id="리포트">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;일간</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;주간</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;월간</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;연간</a></li>
								</ul>
							</div>
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#관리자메뉴">관리자메뉴</button>
							<div class="collapse" id="관리자메뉴">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;시스템관리</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;메뉴관리</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;권한관리</a></li>
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
			<h1 class="h2">&nbsp;회원정보</h1>


			<!-- 웹버전기본정보테이블//모바일감춤 -->
			<div class="d-none d-xl-block ">
				<div class="btn-group me-2">
					<button type="button" class="btn btn-sm btn-outline-success">엑셀</button>
				</div>
			</div>
		</div>


		<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="../main/main.html">
						&nbsp;Home</a></li>
				<li class="breadcrumb-item"><a href="./memberList.html">List</a></li>
				<li class="breadcrumb-item active" aria-current="page">View</li>
			</ol>
		</nav>




		<!-- 모바일버전테이블//웹감춤 -->
		<div class=" d-lg-block d-xl-none">
			<div class="table-responsive">
				<table class="table table-striped table-hover" id="table"
					data-toggle="table" data-toolbar=".toolbar" data-sortable="false"
					data-height="460">
					<thead>
						<tr>
							<th>기본정보</th>
						</tr>
					</thead>
					<tbody>
						<div class="btn-toolbar mb-2 mb-md-0">
							<div class="btn-group me-2">
								<tr>
									<th scope="row">이름</th>
									<td><a href="/infra/member/memberEditAdmin"><c:out
												value="${item.ifmmName}" /> </a></td>
									<th>아이디</th>
									<td><c:out value="${item.ifmmId}" /></td>
								</tr>
								<tr>
									<th>성별</th>
									<td scope="row"><c:if test="${item.ifmmGenderCd eq 3}">
											<c:out value="남성" />
										</c:if> <c:if test="${item.ifmmGenderCd eq 4}">
											<c:out value="여성" />
										</c:if></td>
									<th>생년월일</th>
									<td><c:out value="${item.ifmmDob}" /></td>
								</tr>
								<tr>
									<th>연락처</th>
									<td><c:out value="${item.ifmpNumber}" /></td>
									<th>이메일</th>
									<td><c:out value="${item.ifmeEmailFull}" /></td>
								</tr>
					</tbody>
				</table>
			</div>
		</div>

		<!-- 웹버전기본정보테이블//모바일감춤 -->
		<div class="d-none d-xl-block ">
			<div style="width: 100%; white-space: nowrap">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>기본정보</th>
								<th scope="col" colspan="5" class="text-warning"
									style="font-size: 30px; text-align: right"><c:out
										value="${item.ifmmName}" />
									<button class="btn btn-warning" type="button"
										data-bs-toggle="collapse"
										data-bs-target="#collapseWidthExample" aria-expanded="false"
										aria-controls="collapseWidthExample">
										<i class="fas fa-camera"></i>
									</button>
									<div style="min-height: 0px;">
										<div class="collapse collapse-horizontal"
											id="collapseWidthExample">
											<div class="card card-body" style="width: 200px;">
												<img src="../../../images/user/mirim.jpg">
											</div>
										</div>
									</div></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="table-secondary">아이디</th>
								<td><c:out value="${item.ifmmId}" /></td>
								<th class="table-secondary">비밀번호</th>
								<td><c:out value="${item.ifmmPassword}" /></td>
							</tr>
							<tr>
								<th class="table-secondary">성별</th>
								<td scope="row"><c:if test="${item.ifmmGenderCd eq 3}">
										<c:out value="남성" />
									</c:if> <c:if test="${item.ifmmGenderCd eq 4}">
										<c:out value="여성" />
									</c:if></td>
								<th class="table-secondary">생년월일</th>
								<td><c:out value="${item.ifmmDob}" /></td>
							</tr>
							<tr>
								<th class="table-secondary">연락처</th>
								<%-- 	<td><c:if test="${item.ifmpTelecomeCd eq 28}"> <c:out value="SKT" /> </c:if> 
								<c:if test="${item.ifmpTelecomeCd eq 29}"> <c:out value="KT" /> 	</c:if>
								 <c:if test="${item.ifmpTelecomeCd eq 30}"> <c:out value="LGU" /> </c:if>
								<c:if test="${item.ifmpTelecomeCd eq 31}"> 	<c:out value="기타" /> 	</c:if>
							 --%>
								<td><c:out value="${item.ifmpNumber}" />
									<button type="button" class="btn btn-primary"
										data-bs-toggle="modal" data-bs-target="#exampleModal">sms</button>

									<!-- sms Modal -->
									<div class="modal fade" id="exampleModal" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">
														<i class="fas fa-envelope-open-text"></i>
													</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<form>
														<div class="mb-3">
															<label for="recipient-name" class="col-form-label">번호</label>
															<input type="text" class="form-control"
																id="recipient-name" value="010-9245-6252">
														</div>
														<div class="mb-3">
															<label for="message-text" class="col-form-label">메시지
																입력</label>
															<textarea class="form-control" id="message-text"></textarea>
														</div>
													</form>
												</div>
												<div class="modal-footer">
													<a class="btn btn-secondary" href="./memberView.html"
														role="button">취소</a> <a class="btn btn-primary"
														href="./memberView.html" role="button">전송</a>
												</div>
											</div>
										</div>
									</div></td>
								<th class="table-secondary">이메일</th>
								<td><c:out value="${item.ifmeEmailFull}" />
									<button type="button" class="btn btn-primary"
										data-bs-toggle="modal" data-bs-target="#email">E-mail</button>
									<!-- sms Modal -->
									<div class="modal fade" id="email" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">
														<i class="fas fa-envelope-open-text"></i>
													</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<form>
														<div class="mb-3">
															<label for="recipient-name" class="col-form-label">E-mail</label>
															<input type="text" class="form-control"
																id="recipient-name" value="mija345@naver.com">
														</div>
														<div class="mb-3">
															<label for="message-text" class="col-form-label">메시지
																입력</label>
															<textarea class="form-control" id="message-text"></textarea>
														</div>
													</form>
												</div>
												<div class="modal-footer">
													<a class="btn btn-secondary" href="./memberView.html"
														role="button">취소</a> <a class="btn btn-primary"
														href="./memberView.html" role="button">전송</a>
												</div>
											</div>
										</div>
									</div>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>


		<br>
		<!-- 웹버전테이블 // 모바일감춤 -->
		<div class="d-none d-xl-block ">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col" colspan="5" style="text-align: left">선택입력</th>
						</tr>
					</thead>
					<tr>
						<th class="table-secondary">국적</th>
						<td></td>
						<th class="table-secondary">좋아하는색깔</th>
						<td><c:out value="${item.ifmmFavoriteColor}" /></td>
						<th class="table-secondary">취미</th>
						<td><c:out value="${item.ifmhHobbyCd}" /></td>
					</tr>
					<tr>
						<th class="table-secondary">결혼유무</th>
							<td scope="row"><c:if test="${item.ifmmMarriageCd eq 13}">
											<c:out value="기혼" />
										</c:if> <c:if test="${item.ifmmMarriageCd eq 12}">
											<c:out value="미혼" />
										</c:if></td>
						<th class="table-secondary">자녀수</th>
						<td><c:out value="${item.ifmmChildrenNum}" /></td>
						<th class="table-secondary">결혼기념일</th>
						<td><c:out value="${item.ifmmMarriageDate}" /></td>
					<tr>
						<th class="table-secondary">우편번호</th>
						<td><c:out value="${item.ifmaZipcode}" /></td>
						<th class="table-secondary">주소</th>
						<td><c:out value="${item.ifmaAddress1}" /></td>
						<th class="table-secondary">상세주소</th>
						<td><c:out value="${item.ifmaAddress2}" /></td>
					</tr>
					<tr>
						<th class="table-secondary">SNS/블로그</th>

						<td><c:if test="${item.ifaoSnsTypeCd eq 34}">
								<c:out value="페이스북" />
							</c:if> <c:if test="${item.ifaoSnsTypeCd eq 35}">
								<c:out value="인스타그램" />
							</c:if> <c:if test="${item.ifaoSnsTypeCd eq 36}">
								<c:out value="트위터" />
							</c:if> <c:if test="${item.ifaoSnsTypeCd eq 37}">
								<c:out value="카톡" />
							</c:if></td>
						<th class="table-secondary">계정/주소</th>
						<td><c:out value="${item.ifaoUrl}" /></td>
						<th class="table-secondary">블로그명</th>
						<td><c:out value="${item.ifaoTitle}" /></td>
					</tr>
					<tr>
						<th class="table-secondary">개인정보유효기간</th>
						<td><c:if test="${item.ifmmSaveCd eq 6}">
								<c:out value="1년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 7}">
								<c:out value="2년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 8}">
								<c:out value="3년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 9}">
								<c:out value="5년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 10}">
								<c:out value="10년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 11}">
								<c:out value="탈퇴시" />
							</c:if></td>

						<th class="table-secondary">모바일마케팅동의</th>
						<td><c:if test="${item.ifmmSmsConsentNy eq 1}">
								<c:out value="동의" />
							</c:if> <c:if test="${item.ifmmSmsConsentNy eq 0}">
								<c:out value="거절" />
							</c:if></td>
						<th class="table-secondary">이메일마케팅동의</th>
						<td><c:if test="${item.ifmmEmailConsentNy eq 1}">
								<c:out value="동의" />
							</c:if> <c:if test="${item.ifmmEmailConsentNy eq 0}">
								<c:out value="거절" />
							</c:if></td>
					</tr>
				</table>
			</div>
		</div>


		<!-- 웹모바일공통테이블 -->
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col" colspan="5" style="text-align: left">상담내역</th>
					</tr>
				</thead>
				<tr>
					<th class="table-secondary">상담내역</th>
					<td>
						<div class="form-floating">
							<textarea class="form-control" placeholder="100자 이내 "
								id="floatingTextarea2" style="height: 100px"></textarea>
							<label for="floatingTextarea2">이곳에 작성해주세요.</label>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>로그</th>
					</tr>
				</thead>
				<tr>
					<th class="table-secondary">가입일자</th>
					<td><c:out value="${item.regDateTime}" /></td>
					<th class="table-secondary">최종접속일</th>
					<td><c:out value="${item.regDateTime}" /></td>
				</tr>
				<tr>
					<th class="table-secondary">최종수정일</th>
					<td><c:out value="${item.modDateTime}" /></td>
					<th class="table-secondary">최종수정자</th>
					<td><c:out value="${item.modSeq}" /></td>
				</tr>
			</table>
		</div>


		<br>

		<div class="row text-center" style="width: 100%">
			<div style="width: 100%; float: none; margin: 0 auto">
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-sm btn-outline-primary"
					data-bs-toggle="modal" data-bs-target="#저장">저장</button>

				<!-- Modal -->
				<div class="modal fade" id="저장" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">
									<i class="fas fa-exclamation-circle"></i>저장 확인!
								</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">정말 저장하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<a href="memberView.html">
									<button type="button" class="btn btn-primary">저장</button>
								</a>
							</div>
						</div>
					</div>
				</div>
				<a href="/infra/member/memberEditAdmin">
					<button type="button" class="btn btn-sm btn-outline-warning">
						수정</button>
				</a>

			</div>
		</div>
	</main>

	<br>
	<br>

	<script type="text/javascript">
		/* globals Chart:false, feather:false */

		(function() {
			'use strict'

			feather.replace({
				'aria-hidden' : 'true'
			})

	</script>

	<!-- 팝업 -->
	<script language="javascript">
  function showPopup() { window.open("../main/mainProfileEdit.html", "프로필수정", "width=400, height=300, left=100, top=50"); }
  </script>


	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>



	<!-- 기본템플릿 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	</script>
</body>
</html>


