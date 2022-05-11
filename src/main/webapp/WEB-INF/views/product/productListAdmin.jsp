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
<title>상품조회</title>

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
			href=""> Auctionary</a>
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
									<li><a href="./productList.html" class="link-dark rounded">
											&nbsp; &nbsp;등록상품조회</a></li>
								</ul>
							</div>
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#회원관리">회원관리</button>
							<div class="collapse" id="회원관리">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="../member/memberList.html"
										class="link-dark rounded"> &nbsp; &nbsp;회원조회</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;회원수정</a></li>
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
						<!-- 	<li><a class="dropdown-item" onclick="showPopup();">프로필수정</a></li>
							<li><hr class="dropdown-divider"></li> -->
							<li><a class="dropdown-item" href="#">로그아웃</a></li>
						</ul>

					</div>
				</div>
			</nav>




			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">경매조회</h1>

					<!-- 웹버전기본정보테이블//모바일감춤 -->
					<div class="d-none d-xl-block ">
						<div class="btn-group me-2">
							<button type="button" class="btn btn-sm btn-outline-success">엑셀</button>
						</div>
					</div>
				</div>
		</div>
	</div>
<body>




	<!-- 웹버전기본정보테이블//모바일감춤 -->
	<div class="d-none d-xl-block ">
		<div style="width: 75%; float: none; margin: 0 auto">

			<form id="formList" name="formList" method="post" action="/infra/product/productListAdmin">
	<!-- 선택삭제 -->	<input type="hidden" id="rowNumToShow" name="rowNumToShow"  value="<c:out value="${vo.rowNumToShow}"/>"> 					
	<!-- 선택삭제 -->	<input type="hidden"  id="checkboxSeqArray" name="checkboxSeqArray"> 					
					<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>"> 
					<input type="hidden" id="acprSeq" name="acprSeq"> 
					</form>
	

	<form class="row gx-3 gy-2 align-items-center">
	<div class="col-lg-2 col-md-6 col-sm-12">
					<select class="form-select form-select-sm" name="shProductOptionDate" id="shProductOptionDate" class="" >
<%-- 					<option value="" <c:if test="${empty vo.shProductOptionDate}">selected</c:if>>::날짜::</option> --%>
					<option value="1" <c:if test="${vo.shProductOptionDate eq 1}">selected</c:if>>등록일</option>
				</select>
				</div>
	
		<div class="col-lg-2 col-md-6 col-sm-12">
				<fmt:parseDate value="${vo.shProductDateEnd}" var="shProductDateEnd" pattern="yyyy-MM-dd"/>
				<input class="form-control form-select-sm" type="date" id="" name="shProductDateStart" value="<c:out value="${vo.shProductDateStart}"/>" placeholder="시작일" class="" autocomplete="off">
		</div>
		<div class="col-lg-2 col-md-6 col-sm-12">
				<fmt:parseDate value="${vo.shProductDateEnd}" var="shProductDateEnd" pattern="yyyy-MM-dd"/>
				<input class="form-control form-select-sm" type="date" id="" name="shProductDateEnd" value="<c:out value="${vo.shProductDateEnd}"/>" placeholder="종료일"  class="" autocomplete="off">
		</div>
		</form>
				<br>
				<form class="row gx-3 gy-2 align-items-center">
					<div class="col-lg-2 col-md-6 col-sm-12">
						<select class="form-select form-select-sm" name="shAcprDelNy" id="shAcprDelNy">
							<option value="">::삭제여부::
							<option value="1"<c:if test="${vo.shAcprDelNy eq 1 }">selected </c:if>>Y
							<option value="0"<c:if test="${vo.shAcprDelNy eq 0 }">selected </c:if>>N
						</select> 
					</div>
					<div class="col-lg-2 col-md-6 col-sm-12">
						<select class="form-select form-select-sm" name="shAcprStatusCd" id="shAcprStatusCd">
							<option value="">::경매상태::
							<option value="55"<c:if test="${vo.shAcprStatusCd eq 55 }">selected </c:if>>경매중
							<option value="56"<c:if test="${vo.shAcprStatusCd eq 56 }">selected </c:if>>경매완료
							<option value="57"<c:if test="${vo.shAcprStatusCd eq 57 }">selected </c:if>>경매실패
							<option value="58"<c:if test="${vo.shAcprStatusCd eq 58 }">selected </c:if>>경매취소
						</select> 
			</div>
			
			<div class="col-lg-2 col-md-6 col-sm-12">
						<select class="form-select form-select-sm"  name="shProductOption" id="shProductOption" >
							<option value="">::검색구문::
							<option value="1" <c:if test="${vo.shProductOption eq 1 }"> selected</c:if>>상품번호
							<option value="2" <c:if test="${vo.shProductOption eq 2 }"> selected</c:if>>게시물명
							<option value="3" <c:if test="${vo.shProductOption eq 3 }"> selected</c:if>>게시물내용
							<option value="4" <c:if test="${vo.shProductOption eq 4 }"> selected</c:if>>이름
						</select> 
			</div>
			
			<div class="col-lg-2 col-md-6 col-sm-12">
					<input class="form-control form-control-sm"  type="text" name="shProductValue" id="shProductValue" value="<c:out value="${vo.shProductValue}"/>">
				</div>	
				<div class="col-sm-3">
					<button class="btn btn-primary" type="submit" name="search" id="btnSearch">검색</button> 
								</div>	
		</form>		

				<br> <br> <br>
				<div class="table-responsive">
					<table class="table table-striped table-hover" data-toggle="table"
						data-toolbar=".toolbar" data-sortable="false" data-height="460">
						<thead>
							<tr>
								<div class="m_check_wrap">
									<th><input type="checkbox" id="checkboxAll" name="checkboxAll"> No.</th>
								</div>

								<th onclick=sortContent(0) scope="col">게시물제목 <i
									class="fas fa-sort"> </i></th>
								<th onclick=sortContent(0) scope="col">이름 <i
									class="fas fa-sort"> </i>
								</th>
								<th onclick=sortContent(0) scope="col">아이디 <i
									class="fas fa-sort"> </i>
								</th>
								<th onclick=sortContent(0) scope="col">경매상태 <i
									class="fas fa-sort"> </i>
								</th>
								<th onclick=sortContent(0) scope="col">경매등록일 <i
									class="fas fa-sort"> </i></th>
								<th onclick=sortContent(0) scope="col">경매마감일 <i
									class="fas fa-sort"> </i></th>
								<th onclick=sortContent(0) scope="col">경매시작가 <i
									class="fas fa-sort"> </i></th>
								<th onclick=sortContent(0) scope="col">현재경매가 <i
									class="fas fa-sort"> </i></th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td class="text-center" colspan="9">There is no data!</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="item" varStatus="status">

									<tbody id="mainTable_tbody">
										<tr>
											<td scope="row">
												<div class="m_check_wrap">										
														<input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${item.acprSeq}" />" >
															&nbsp;&nbsp;<c:out value="${item.acprSeq}" />
												</div>
											</td>
<%-- 											<td><a href="/infra/product/productViewAdmin?acprSeq=<c:out value="${item.acprSeq}"/>"> <c:out value="${item.acprProductName}" /> </a></td>
											 --%>
											<td>
											<a href="javaScript:goProductView('<c:out value="${item.acprSeq}"/>')"><c:out value="${item.acprProductName}" /></a></td>
											<td><c:out value="${item.ifmmName}" /></td>
											<td><c:out value="${item.ifmmId}" /></td>
											<td><c:if test="${item.acprStatusCd eq 55}">
													<c:out value="경매중" />
												</c:if> <c:if test="${item.acprStatusCd eq 56}">
													<c:out value="경매완료" />
												</c:if> <c:if test="${item.acprStatusCd eq 57}">
													<c:out value="경매취소" />
												</c:if> <c:if test="${item.acprStatusCd eq 58}">
													<c:out value="경매실패" />
												</c:if></td>
											<td><c:out value="${item.acprStartDate}" /></td>
											<td><c:out value="${item.acprEndDate}" /></td>					
											<td><fmt:formatNumber value="${item.acprPriceStart}"/></td>
											<td><fmt:formatNumber value="${item.acprPriceNow}"/></td>
										</tr>

									</tbody>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</table>
				</div>
		</div>
	</div>


<%-- 	<!-- 모바일버전테이블//웹감춤 -->
	<div class=" d-lg-block d-xl-none">
		<div id="mainTable" class="row text-center" style="width: 100%">
			<div style="width: 98%; float: none; margin: 0 auto">
				<div class="table-responsive">
					<table class="table table-striped table-hover" data-toggle="table"
						data-toolbar=".toolbar" data-sortable="false" data-height="460">
						<thead>

							<tr>
								<th onclick=sortContent(0) scope="col">No</th>
								<th onclick=sortContent(0) scope="col">게시물제목</th>
								<th onclick=sortContent(0) scope="col">아이디</th>
								<th onclick=sortContent(0) scope="col">경매상태</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td class="text-center" colspan="9">There is no data!</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="item" varStatus="status">
									<tbody id="mainTable_tbody">
										<tr>
											<td><c:out value="${item.acprSeq}" /></td>
											<td><a href="/infra/product/productViewAdmin"><c:out
														value="${item.acprProductName}" /></a></td>
											<td><c:out value="${item.ifmmId}" /></td>
											<td><c:if test="${item.acprStatusCd eq 55}">
													<c:out value="경매중" />
												</c:if> <c:if test="${item.acprStatusCd eq 56}">
													<c:out value="경매완료" />
												</c:if> <c:if test="${item.acprStatusCd eq 57}">
													<c:out value="경매취소" />
												</c:if> <c:if test="${item.acprStatusCd eq 58}">
													<c:out value="경매실패" />
												</c:if></td>
										</tr>
									</tbody>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</table>
				</div>
			</div>

		</div>
	</div> --%>




	<div class="row text-center" style="width: 100%">
		<div style="width: 100%; float: none; margin: 0 auto">

	
			<a href="/infra/product/productFormAdmin">
				<button type="button" class="btn btn-sm btn-outline-success">상품등록</button></a>

			<button type="button" class="btn btn-sm btn-outline-danger"
				data-bs-toggle="modal" data-bs-target="#삭제">삭제</button>

			<!-- Modal -->
			<div class="modal fade" id="삭제" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">
								<i class="fas fa-exclamation-circle"></i>삭제 확인!
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">정말 삭제하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<a href="memberList.html">
								<button type="button" class="btn btn-primary">확인</button>
							</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<br>
	<br>

<%-- 겟방식
	<nav aria-label="...">
		<ul class="pagination justify-content-center">
			<c:if test="${vo.startPage gt vo.pageNumToShow}">
				<li class="page-item"><a class="page-link"
					href="/infra/product/productListAdmin?thisPage=${vo.startPage - 1}">Previous</a></li>
			</c:if>
			<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
				<c:choose>
					<c:when test="${i.index eq vo.thisPage}">
						<li class="page-item active"><a class="page-link"
							href="/infra/product/productListAdmin?thisPage=${i.index}">${i.index}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="/infra/product/productListAdmin?thisPage=${i.index}">${i.index}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${vo.endPage ne vo.totalPages}">
				<li class="page-item"><a class="page-link"
					href="/infra/product/productListAdmin?thisPage=${vo.endPage + 1}">Next</a></li>
			</c:if>
		</ul>
	</nav> --%>
	
		<nav aria-label="...">
				<ul class="pagination  justify-content-center">
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
						<li class="page-item"><a class="page-link" href="javascript:goProductList( <c:out value='${vo.startPage - 1}'/>);"> Previous</a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
								<li class="page-item active"><a class="page-link" href="javascript:goProductList(<c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link" href="javascript:goProductList( <c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${vo.endPage ne vo.totalPages}">
						<li class="page-item"><a class="page-link" href="javascript:goProductList( <c:out value='${vo.endPage + 1 }'/>);">Next</a></li>
					</c:if>
				</ul>
			</nav>
</body>


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

<script type="text/javascript">   //전체선택
		function allCheck(e) {
			if (e.target.checked) {
				document.querySelectorAll(".check_all_list").forEach(
						function(v, i) {
							v.checked = true;
						});
			} else {
				document.querySelectorAll(".check_all_list").forEach(
						function(v, i) {
							v.checked = false;
						});
			}
		}
		function checkAllList(e) {
			let checkCount = 0;
			document.querySelectorAll(".check_all_list").forEach(
					function(v, i) {
						if (v.checked === false) {
							checkCount++;
						}
					});
			if (checkCount > 0) {
				document.getElementById("allCheck").checked = false;
			} else if (checkCount === 0) {
				document.getElementById("allCheck").checked = true;
			}
	</script>


			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<script src="/infra/resources/common/js/validation.js"></script>
			
			<!-- jquery ui -->
			<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
			
<!-- 팝업 -->
<script language="javascript">
  function showPopup() { window.open("main/mainProfileEdit", "프로필수정", "width=400, height=300, left=100, top=50"); }
  </script>

	<script type="text/javascript">
	
		$("#btnSearch").on( 
				"click", function() {
				if (!checkNull($("#shProductOption"), $("#shProductOption").val(),"검색구문을 선택해 주세요!")) 
					return
					false;
				if (!checkNull($("#shProductValue"), $("#shProductValue").val(),"검색어를 입력 해 주세요!"))
					retrun
				false;
			});
			</script>
	
	 <script type="text/javascript">
		var seq = $("input:hidden[name=acprSeq]");
		
	 	goProductList = function(seq){
			alert(seq);
					$("#thisPage").val(seq);
					$("#formList").submit();
			};
	 	goProductView( = function(seq){
			 alert(seq);
					$("#acprSeq").val(seq);
					$("#formList").attr("action","/infra/product/productViewAdmin");
					$("#formList").submit();
			};
		 gProductForm = function(seq){
				$("#formList").attr("action","/infra/product/productFormAdmin");
				$("#formList").submit();
			};	 
		 
		goProductMultiNelete = function(seq){
				$("#acprSeq").val(seq);
				$("#formList").attr("action","/infra/product/productMultiNele");
				$("#formList").submit(); 
			};	 

			</script>
		
		<script type="text/javascript"> 
		$("#checkboxAll").click(function() {  //전체선택
		if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
		else $("input[name=checkboxSeq]").prop("checked", false);
		});

		$("input[name=checkboxSeq]:checked").each(function() { 
			var total = $("input[name=checkboxSeq]").length;
			var checked = $("input[name=checkboxSeq]:checked").length;
			if(total != checked) $("#checkboxAll").prop("checked", false);
			else $("#checkboxAll").prop("checked", true);
		});
		</script>
		
		<script type="text/javascript"> 
		$(document).ready(function() {
			$("#shProductDateStart").datepicker(); //시작일데이트피커
			$("#shProductDateEnd").datepicker(); //종료일데이트피커
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



</html>