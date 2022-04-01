<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<% pageContext.setAttribute("br", "\n"); %>  <!-- 설명엔터 -->

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

<!-- 제이쿼리 ui CSS -->
<link
	href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">
	
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

		<form id="formEdit" name="formEdit" method="post" action="/infra/member/memberUpdtAdmin">
		<!-- onsubmit="return check();" --> 
		
		
		<!-- 기본값히든처리 -->
		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" />">
		<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${vo.ifmmSeq}"/>">
		<input type="hidden" id="shIfmmDelNy" name="shIfmmDelNy" value="<c:out value="${vo.shIfmmDelNy}"/>">
		<input type="hidden" id="shIfmmName" name="shIfmmName" value="<c:out value="${vo.shIfmmName}"/>">
		<input type="hidden" id="shMemberOption" name="shMemberOption" value="<c:out value="${vo.shMemberOption}"/>">
		<input type="hidden" id="shMemberValue" name="shMemberValue" value="<c:out value="${vo.shMemberValue}"/>">


			<div class="row text-center" style="width: 95%; white-space: nowrap">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>기본정보</th>
								<th scope="col" colspan="5" class="text-warning"
									style="font-size: 30px; text-align: right"><c:out value="${item.ifmmName}" />
									<button class="btn btn-warning" type="button" data-bs-toggle="collapse"
										data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
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
									</div>
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="table-secondary">아이디</th>
								<td><c:out value="${item.ifmmId}" /></td>
								<th class="table-secondary">비밀번호</th>
								<td><input type="text" name="ifmmPassword" value="<c:out value="${item.ifmmPassword}"/>"></td>
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
						<td> <input class="" type="text" id="ifmmDob"
							name="ifmmDob" autocomplete="off"  value="<c:out value="${item.ifmmDob }"/>">  </td>
							</tr>
							<tr>
								<th class="table-secondary">연락처</th>
								<td><select name="ifmpTelecomCd" required>
										<option value="">선택</option>
										<option value="28" <c:if test="${item.ifmpTelecomCd eq 28}">selected</c:if>>SKT</option>
										<option value="29" <c:if test="${item.ifmpTelecomCd eq 29}">selected</c:if>>KT</option>
										<option value="30" <c:if test="${item.ifmpTelecomCd eq 30}">selected</c:if>>LGU</option>
										<option value="31" <c:if test="${item.ifmpTelecomCd eq 31}">selected</c:if>>기타</option>
								</select> 
												
								<input type="text" name="ifmpNumber" value="<c:out value="${item.ifmpNumber}"/>"></td>
								<th class="table-secondary">이메일</th>
								<td><input type="text" name="ifmeEmailFull" value="<c:out value="${item.ifmeEmailFull}"/>"></td>
							</tr>
						</tbody>
					</table>
				</div>
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
						</div></td> </tr> --%>
				<tr>
					<th class="table-secondary" >결혼유무</th>
					<td><select class=""  name="ifmmMarriageCd">
		
					<option value="13" <c:if test="${item.ifmmMarriageCd eq 28}">selected</c:if>>YES</option>
					<option value="12" <c:if test="${item.ifmmMarriageCd eq 29}">selected</c:if>>NO</option>
					</select></td>				
<%-- 				<td scope="row"> <select class=""><c:if test="${item.ifmmMarriageCd eq 13}">
											<c:out value="기혼" />
										</c:if> <c:if test="${item.ifmmMarriageCd eq 12}">
											<c:out value="미혼" />
										</c:if> 	</select></td> --%>
					<th class="table-secondary">자녀수</th>
					<td><input type="text" class="" id="ifmmChildrenNum" name="ifmmChildrenNum" value="<c:out value="${item.ifmmChildrenNum}" />"></td>
					<th class="table-secondary">결혼기념일</th>
					
						
								<td> <input class="" type="text" id="ifmmMarriageDate"
							name="ifmmMarriageDate" autocomplete="off"  value="<c:out value="${item.ifmmMarriageDate }"/>">  </td>
							</tr>
				<tr>
					<th class="table-secondary">우편번호</th>
					<td>
					<input type="hidden" class="form-control"  id="ifmaDefaultNy"  name="ifmaDefaultNy" value="1">
					<input type="hidden" class="form-control" id="ifmaTypeCd"  name="ifmaTypeCd" value="14">
					<input type="hidden" class="form-control" id="ifmaTitle"  name="ifmaTitle" value="">
					<input type="text" class="" id="ifmaZipcode" name="ifmaZipcode"
						value="<c:out value="${item.ifmaZipcode}" />" onclick="sample6_execDaumPostcode()"></td>
								
					<th class="table-secondary">주소</th>
					<td> <input type="text" class="" id="ifmaAddress1" name="ifmaAddress1" 
		 placeholder=""  value="<c:out value="${item.ifmaAddress1}" />"> </td>
						
					<th class="table-secondary">상세주소</th>
					<td><input type="text" class="" id="ifmaAddress2" name="ifmaAddress2"
					 maxlength="50" value="<c:out value="${item.ifmaAddress2}" />"></td>
				</tr>
				<tr>
					<th class="table-secondary">SNS/블로그</th>
					<td><select class=""
						aria-label="Default select example" name="ifaoSnsTypeCd">
							<option value="">선택</option>
							<option value="34" <c:if test="${item.ifaoSnsTypeCd eq 34}">selected</c:if>>페이스북</option>
							<option value="35" <c:if test="${item.ifaoSnsTypeCd eq 35}">selected</c:if>>인스타그램</option>
							<option value="36" <c:if test="${item.ifaoSnsTypeCd eq 36}">selected</c:if>>트위터</option>
							<option value="37" <c:if test="${item.ifaoSnsTypeCd eq 37}">selected</c:if>>카카오톡</option>
					</select></td>
					<th class="table-secondary">계정/주소</th>
					<td><input type="text" class="" id="ifaoUrl" name="ifaoUrl" value="<c:out value="${item.ifaoUrl}" />"></td>
					<th class="table-secondary">블로그명</th>
					<td><input type="text" class="" id="ifaoTitle" name="ifaoTitle" value="<c:out value="${item.ifaoTitle}" />"></td>
				</tr>
				<tr>
					<th class="table-secondary">개인정보유효기간</th>
					<td><select class=""
						aria-label="Default select example" name="ifmmSaveCd">
							<option value="">선택</option>
							<option value="6" <c:if test="${item.ifmmSaveCd eq 6}">selected</c:if>>1년</option>
							<option value="7" <c:if test="${item.ifmmSaveCd eq 7}">selected</c:if>>2년</option>
							<option value="8" <c:if test="${item.ifmmSaveCd eq 8}">selected</c:if>>3년</option>
							<option value="9" <c:if test="${item.ifmmSaveCd eq 9}">selected</c:if>>5년</option>
							<option value="10" <c:if test="${item.ifmmSaveCd eq 10}">selected</c:if>>10년</option>
							<option value="11" <c:if test="${item.ifmmSaveCd eq 11}">selected</c:if>>탈퇴시</option>
					</select></td>
					<th class="table-secondary" >모바일마케팅동의</th>
					<td><select class=""
						aria-label="Default select example" name="ifmmSmsConsentNy">
							<option value="">선택</option>
							<option value="1" <c:if test="${item.ifmmSmsConsentNy eq 1}">selected</c:if>>YES</option>
							<option value="0" <c:if test="${item.ifmmSmsConsentNy eq 0}">selected</c:if>>NO</option>
					</select></td>
					<th class="table-secondary" >이메일마케팅동의</th>
					<td><select class=""
						aria-label="Default select example" name="ifmmEmailConsentNy">
							<option value="">선택</option>
							<option value="1" <c:if test="${item.ifmmEmailConsentNy eq 1}">selected</c:if>>YES</option>
							<option value="0" <c:if test="${item.ifmmEmailConsentNy eq 0}">selected</c:if>>NO</option>
					</select></td>
				</tr>
			</table>
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
					<td> <div class="form-floating">
					<input type="text" class="form-control" style="height: 100px" autocomplete="off" id="ifmmDesc" name="ifmmDesc"
						value="<c:out value="${item.ifmmDesc}" />"> <label for="ifmmDesc">이곳에 작성해주세요.</label>
						</div></td>		
						
						
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
</form>

		<div class="row text-center" style="width: 100%">
			<div style="width: 100%; float: none; margin: 0 auto">

<%-- 	겟방식	<a href="/infra/member/memberList?thisPage=${vo.thisPage}&shMemberOption=<c:out value=
"${vo.shMemberOption}"/>&shMemberValue=<c:out value="${vo.shMemberValue}"/>">
					<button type="submit" id="btnSubmit" name="btnSubmit" value="제출"
						class="btn btn-sm btn-outline-secondary">목록</button> </a>  --%>
	 				
<a href="javascript:goMemberView('<c:out value="${item.ifmmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>',
'<c:out value="${vo.shMemberOptionDate}"/>','<c:out value="${vo.shMemberDateStart}"/>','<c:out value="${vo.shMemberDateEnd}"/>');"> <button type="button" class="btn btn-sm btn-outline-secondary"> 취소 </button></a>
<a href="javascript:goMemberUpdt('<c:out value="${item.ifmmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>',
'<c:out value="${vo.shMemberOptionDate}"/>','<c:out value="${vo.shMemberDateStart}"/>','<c:out value="${vo.shMemberDateEnd}"/>');"> <button type="submit" id="" name="" value="제출" class="btn btn-sm btn-outline-primary" 
data-bs-toggle="modal" data-bs-target="#modal">저장</button> </a>

<%-- 겟방식 <a href="/infra/member/memberEditAdmin?thisPage=${vo.thisPage}&shMemberOption=<c:out value=
"${vo.shMemberOption}"/>&shMemberValue=<c:out value="${vo.shMemberValue}"/>">
					<button type="submit" id="btnSubmit" name="btnSubmit" value="제출"
						class="btn btn-sm btn-outline-primary" data-bs-toggle="modal"
						data-bs-target="#저장">저장</button></a> --%>
						
<!-- 저장모달		<div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">
									<i class="fas fa-exclamation-circle"></i>저장 확인! </h5>
			 <button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>  </div>
							<div class="modal-body">정말 수정하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
					<a href="javascript:goMemberUpdt();">
									<button type="button" class="btn btn-primary">저장</button> </a>
							</div>
						</div>
					</div>
				</div>  -->
			</div>
		</div>
	</main>

	<br><br>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/infra/resources/common/js/validation.js"></script>
			
			<!-- jquery ui -->
		<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
			
	
	<script type="text/javascript">
		goMemberView = function(seq){
					$("#ifmmSeq").val(seq)	
					$("#formEdit").attr("action","/infra/member/memberViewAdmin");
					$("#formEdit").submit();
			};
		

		goMemberUpdt = function(seq){
					$("#ifmmSeq").val(seq)	
					$("#formEdit").attr("action","/infra/member/memberUpdtAdmin");
					$("#formEdit").submit();
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
 
 	<!--  주소창 다음api  -->
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
            }
        }).open();
    }
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
</body>
</html>
