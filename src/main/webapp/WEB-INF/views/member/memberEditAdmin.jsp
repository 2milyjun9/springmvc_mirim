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
<title> 회원수정</title>

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

body {
	font-size: .9rem;
}

.feather {
	width: 10px;
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
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#회원관리">회원관리</button>
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
			<h1 class="h2">회원수정</h1>

			<div class="btn-group me-2">
				<button type="button" class="btn btn-sm btn-outline-success">엑셀</button>
			</div>
		</div>
		</div>

		<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="main/mainAdmin">
						&nbsp;Home</a></li>
				<li class="breadcrumb-item"><a href="memberListAdmin">List</a></li>
				<li class="breadcrumb-item active"><a
					href="memberViewAdmin.html"> View</a></li>
				<li class="breadcrumb-item active" aria-current="page">Edit</li>
			</ol>
		</nav>

		<form method="post" action="/infra/member/memberUpdtAdmin"
			onsubmit="return check();">

			<div class="row text-center" style="width: 95%; white-space: nowrap">
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
												<img
													src="${pageContext.request.contextPath}/resources/xdmin/images/seonwoo3.jpg">

												<div class="input-group mb-3">
													<input type="file" class="form-control"
														id="inputGroupFile02"> <label
														class="input-group-text" for="inputGroupFile02">Upload</label>
												</div>
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

								<td><select name="ifmmGenderCd" required>
										<option value="3"
											<c:if test="${item.ifmmGenderCd eq 3}">selected</c:if>>남성</option>
										<option value="4"
											<c:if test="${item.ifmmGenderCd eq 4}">selected</c:if>>여성</option>
								</select></td>


								<th class="table-secondary">생년월일</th>
								<td><c:out value="${item.ifmmDob}" /></td>
							</tr>
							<tr>
								<th class="table-secondary">연락처</th>
								<td><select name="ifmpTelecomCd" required>
										<option value="28">SKT</option>
										<option value="29">KT</option>
										<option value="30">LGU</option>
										<option value="31">기타</option>
								</select> <input type="text" value="<c:out value="${item.ifmpNumber}"/>">
								</td>
								<th class="table-secondary">이메일</th>
								<td><input type="text"
									value="<c:out value="${item.ifmeEmailFull}"/>">
							</tr>
						</tbody>
					</table>
				</div>
		</form>
		<br>


		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col" colspan="5" style="text-align: left">선택입력</th>
					</tr>
				</thead>
<%-- 				<tr>
					<th class="table-secondary">국적</th>
					<td><select class=""
						aria-label="Default select example">
							<option selected>대한민국</option>
							<option>미국</option>
							<option>영국</option>
							<option>기타</option>
					</select></td>
					<th class="table-secondary">좋아하는색깔</th>
					<th><input type="text"
						class="" id=""
						value="<c:out value="${item.ifmmFavoriteColor}" />" title=""> 						
						</th>
						
						
					<th class="table-secondary">취미</th>

					<td><div class="form-check form-check-inline ">
							<input class="form-check-input" type="checkbox" value="38"
								<c:if test="${item.ifmhHobbyCd eq 38}">checked</c:if>> <label
								class="" for="flexCheckDefault"> 영화감상 </label>
						</div>

						<div class="form-check form-check-inline ">
							<input class="form-check-input" type="checkbox" value="39"
								<c:if test="${item.ifmhHobbyCd eq 39}">checked</c:if>> <label
								class="" for="flexCheckDefault"> 골프 </label>
						</div>
						<div class="form-check form-check-inline ">
							<input class="form-check-input" type="checkbox" value=""
								id=""> <label class=""
								for="flexCheckDefault"> 음악감상 </label>
						</div> <br>
						<div class="form-check form-check-inline ">
							<input class="form-check-input" type="checkbox" value=""
								id=""> <label class=""
								for="flexCheckChecked"> 트레킹 </label>
						</div>
						<div class="form-check form-check-inline ">
							<input class="form-check-input" type="checkbox" value=""
								id=""> <label class=""
								for="flexCheckDefault"> 서핑 </label>
						</div>
						<div class="form-check form-check-inline ">
							<input class="form-check-input" type="checkbox" value=""
								id=""> <label class=""
								for="flexCheckChecked"> 피아노 </label>
						</div></td>
				</tr> --%>
				<tr>
					<th class="table-secondary">결혼유무</th>
					<td><select class="" >
							<option value="1">YES</option>
							<option value="2">NO</option>
					</select></td>

										
<%-- 				<td scope="row"> <select class=""><c:if test="${item.ifmmMarriageCd eq 13}">
											<c:out value="기혼" />
										</c:if> <c:if test="${item.ifmmMarriageCd eq 12}">
											<c:out value="미혼" />
										</c:if> 	</select></td> --%>
					<th class="table-secondary">자녀수</th>
					<td><input type="text" class="" id=""
					value="<c:out value="${item.ifmmChildrenNum}" />"></td>
					<th class="table-secondary">결혼기념일</th>
					<td><div class="form-floating mb-3">
							<input type="text" class="" id=""
								value="<c:out value="${item.ifmmMarriageDate}" />">
						</div></td>
				<tr>
					<th class="table-secondary">우편주소</th>
					<td><input type="text" class="" id=""
						value="<c:out value="${item.ifmaZipcode}" />"></td>
					<th class="table-secondary">주소</th>
					<td><input type="text" class="" id=""
						value="<c:out value="${item.ifmaAddress1}" />"></td>
					<th class="table-secondary">상세주소</th>
					<td><input type="text" class="" id=""
						value="<c:out value="${item.ifmaAddress2}" />"></td>
				</tr>
				<tr>
					<th class="table-secondary">SNS/블로그</th>
					<td><select class=""
						aria-label="Default select example">
							<option>선택</option>
							<option>페이스북</option>
							<option >인스타그램</option>
							<option>트위터</option>
							<option>카카오톡</option>
							<option>기타</option>
					</select></td>
					<th class="table-secondary">계정/주소</th>
					<td><input type="text" class="" id=""
							value="<c:out value="${item.ifaoUrl}" />"></td>
					<th class="table-secondary">블로그명</th>
					<td><input type="text" class="" id=""
						value="<c:out value="${item.ifaoTitle}" />"></td>
				</tr>
				<tr>
					<th class="table-secondary">개인정보유효기간</th>
					<td><select class=""
						aria-label="Default select example">
							<option value="1" >1년</option>
							<option value="2">3년</option>
							<option value="3">5년</option>
					</select></td>
					<th class="table-secondary">모바일마케팅동의</th>
					<td><select class=""
						aria-label="Default select example">
							<option value="1">YES</option>
							<option value="2" >NO</option>
					</select></td>
					<th class="table-secondary">이메일마케팅동의</th>
					<td><select class=""
						aria-label="Default select example">
							<option value="1">YES</option>
							<option value="2" >NO</option>
					</select></td>
				</tr>
			</table>
		</div>


		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col" colspan="5" style="text-align: left">로그</th>
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



		<!-- 기본값 히든처리 -->
		<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>"> 
		<input type="hidden" name="shMemberOption" value="<c:out value="${vo.shMemberOption}"/>">
		<input type="hidden" name="shMemberValue" value="<c:out value="${vo.shMemberValue}"/>">
		<input type="hidden" name=""> 
		<input type="hidden" name="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>"> 
		<input type="hidden" name="ifmmSeq" value="<c:out value="${item.ifmmAdminNy}"/>"> 
		<input type="hidden" name="ifmmDelNy" value="<c:out value="${item.ifmmDelNy}"/>"> <br>

		<div class="row text-center" style="width: 100%">
			<div style="width: 100%; float: none; margin: 0 auto">

	<%-- 			<a
					href="/infra/member/memberList?thisPage=${vo.thisPage}&shMemberOption=<c:out value=
"${vo.shMemberOption}"/>&shMemberValue=<c:out value="${vo.shMemberValue}"/>">
					<button type="submit" id="btnSubmit" name="btnSubmit" value="제출"
						class="btn btn-sm btn-outline-secondary">목록</button>
				</a> --%>
				
				<a href="javascript:goList();"> <button type="button" class="btn btn-sm btn-outline-secondary"> 목록 </button></a>

				<!-- Button trigger modal -->
				<a
					href="/infra/member/memberEditAdmin?thisPage=${vo.thisPage}&shMemberOption=<c:out value=
"${vo.shMemberOption}"/>&shMemberValue=<c:out value="${vo.shMemberValue}"/>">
					<button type="submit" id="btnSubmit" name="btnSubmit" value="제출"
						class="btn btn-sm btn-outline-primary" data-bs-toggle="modal"
						data-bs-target="#저장">저장</button>
				</a>
				
				
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
							<div class="modal-body">정말 수정하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<a href="memberEditAdmin">
									<button type="button" class="btn btn-primary">저장</button>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	<script type="text/javascript">

	  goList = function(){
		  	$("#formView").attr("action", "/infra/member/memberList");
		  	$("#formView").submit();
		  };
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

	<!-- 팝업 -->
	<script language="javascript">
  function showPopup() { window.open("main/mainProfileEdit", "프로필수정", "width=400, height=300, left=100, top=50"); }
  </script>
  


</body>
</html>
