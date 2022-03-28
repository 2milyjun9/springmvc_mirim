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
<title>경매조회</title>

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
									<li><a href="../../member/memberList.html"
										class="link-dark rounded"> &nbsp; &nbsp;회원조회</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;회원수정</a></li>
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



			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">경매정보</h1>

					<!-- 웹버전기본정보테이블//모바일감춤 -->
					<div class="d-none d-xl-block ">
						<div class="btn-group me-2">
							<button type="button" class="btn btn-sm btn-outline-success">엑셀</button>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>



	<!-- 모바일버전테이블//웹감춤 -->
	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<div class=" d-lg-block d-xl-none">
			<div id="mainTable" class="row text-center"
				style="width: 100%; white-space: nowrap">
				<div class="table-responsive">
					<table class="table table-striped table-hover" id="table"
						data-toggle="table" data-toolbar=".toolbar" data-sortable="false"
						data-height="460">
						<thead>
							<tr>
								<th>경매정보</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">카테고리</th>
								<td>...</td>
								<th>경매상태</th>
								<td><b> <c:if test="${item.acprStatusCd eq 55}">
											<c:out value="경매중" />
										</c:if> <c:if test="${item.acprStatusCd eq 56}">
											<c:out value="경매완료" />
										</c:if> <c:if test="${item.acprStatusCd eq 57}">
											<c:out value="경매취소" />
										</c:if> <c:if test="${item.acprStatusCd eq 58}">
											<c:out value="경매실패" />
										</c:if>
								</b></td>
							</tr>
							<tr>
								<th>상품번호</th>
								<td scope="row"><c:out value="${item.acprSeq}" /></td>
								<th>거래방식</th>
								<td><c:if test="${item.acprPickupCd eq 51}">
										<c:out value="직거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 52}">
										<c:out value="택배거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 53}">
										<c:out value="퀵거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 54}">
										<c:out value="협의" />
									</c:if></td>
							<tr>
								<th>경매등록일</th>
								<td><c:out value="${item.regDateTime}" /></td>
								<th>경매마감일</th>
								<td><c:out value="${item.acprEndDate}" /></td>
							</tr>
							<tr>
								<th>경매시작가</th>
								<td><c:out value="${item.acprPriceStart}" /></td>
								<th>경매현재가</th>
								<td><b> <c:out value="${item.acprPriceNow}" />
								</b></td>
							</tr>

							<tr>
								<th>게시물명</th>
								<td scope="row"><c:out value="${item.acprProductName}" /></td>
								<th>게시물내용</th>
								<td><c:out value="${item.acprDetails}" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>

	<!-- 모바일버전테이블//웹감춤 -->
	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<div class=" d-lg-block d-xl-none">
			<div class="table-responsive">
				<div id="mainTable" class="row text-center"
					style="width: 100%; white-space: nowrap">
					<table class="table table-striped table-hover" id="table"
						data-toggle="table" data-toolbar=".toolbar" data-sortable="false"
						data-height="460">
						<thead>

							<tr>
								<th>경매자</th>
							</tr>
						</thead>
		<%-- 				<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td class="text-center" colspan="9">There is no data!</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="item" varStatus="status"> --%>
									<tbody>
										<tr>
											<th scope="row">이름</th>
											<td><a
												href="/infra/member/memberViewAdmin?ifmmSeq=<c:out value="${item.ifmmSeq}"/>">
													<c:out value="${item.ifmmName}" />
											</a></td>
											<th>아이디</th>
											<td><c:out value="${item.ifmmId}" /></td>
										</tr>
										<tr>
											<th>닉네임</th>
											<td scope="row"><c:out value="${item.ifmmNickname}" /></td>
											<th>생년월일</th>
											<td><c:out value="${item.ifmmDob}" /></td>
										</tr>
									</tbody>
<%-- 								</c:forEach>
							</c:otherwise>
						</c:choose> --%>
					</table>
				</div>
			</div>
		</div>
	</main>

	<!-- 웹버전기본정보테이블//모바일감춤 -->
	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<div class="d-none d-xl-block ">
			<div id="mainTable" class="row text-center"
				style="width: 100%; white-space: nowrap">
				<div class="table-responsive">
					<table class="table table-hover" id="table" data-toggle="table"
						data-toolbar=".toolbar" data-sortable="false" data-height="460">
						<thead>
							<tr>
								<th>경매정보</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" class="table-secondary">카테고리</th>
								<td>...</td>
								<th class="table-secondary">경매상태</th>
								<td><b> <c:if test="${item.acprStatusCd eq 55}">
											<c:out value="경매중" />
										</c:if> <c:if test="${item.acprStatusCd eq 56}">
											<c:out value="경매완료" />
										</c:if> <c:if test="${item.acprStatusCd eq 57}">
											<c:out value="경매취소" />
										</c:if> <c:if test="${item.acprStatusCd eq 58}">
											<c:out value="경매실패" />
										</c:if>
								</b></td>
							</tr>
							<tr>
								<th class="table-secondary">상품번호</th>
								<td scope="row"><c:out value="${item.acprSeq}" /></td>
								<th class="table-secondary">거래방식</th>
								<td><c:if test="${item.acprPickupCd eq 51}">
										<c:out value="직거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 52}">
										<c:out value="택배거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 53}">
										<c:out value="퀵거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 54}">
										<c:out value="협의" />
									</c:if></td>
							<tr>
								<th class="table-secondary">경매등록일</th>
								<td><c:out value="${item.regDateTime}" /></td>
								<th class="table-secondary">경매마감일</th>
								<td><c:out value="${item.acprEndDate}" /></td>

							</tr>
							<tr>
								<th class="table-secondary">경매시작가</th>
								<td><c:out value="${item.acprPriceStart}" /></td>
								<th class="table-secondary">경매현재가</th>
								<td><b> <c:out value="${item.acprPriceNow}" />
								</b></td>
							</tr>

							<tr>
								<th class="table-secondary">게시물명</th>
								<td scope="row"><c:out value="${item.acprProductName}" /></td>
								<th class="table-secondary">게시물내용</th>
								<td><c:out value="${item.acprDetails}" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>



		<!-- 웹버전테이블 // 모바일감춤 -->
		<div class="d-none d-xl-block ">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>경매자</th>
						</tr>
					</thead>
		<%-- 			<c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<tr>
								<td class="text-center" colspan="9">There is no data!</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="item" varStatus="status"> --%>
								<tbody>
									<tr>
										<th scope="row" class="table-secondary">이름</th>
										<td><a
											href="/infra/member/memberViewAdmin?ifmmSeq=<c:out value="${item.ifmmSeq}"/>">
												<c:out value="${item.ifmmName}" />
										</a></td>
										<th class="table-secondary">아이디</th>
										<td><c:out value="${item.ifmmId}" /></td>
									</tr>
									<tr>
										<th class="table-secondary">닉네임</th>
										<td scope="row"><c:out value="${item.ifmmNickname}" /></td>
										<th class="table-secondary">생년월일</th>
										<td><c:out value="${item.ifmmDob}" /></td>
									</tr>
								</tbody>
<%-- 							</c:forEach>
						</c:otherwise>
					</c:choose> --%>
				</table>
			</div>
		</div>


		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>로그</th>
					</tr>
				</thead>
				<tr>
					<th class="table-secondary">등록일자</th>
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
	</main>

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

			<button type="button" class="btn btn-sm btn-outline-warning">
				<a href="...."> 상품수정 </a>
			</button>
		</div>
	</div>


	<br>
	<br>
</body>
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
  function showPopup() { window.open("mainProfileEdit.jsp", "프로필수정", "width=400, height=300, left=100, top=50"); }
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

</html>