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
<title>Auctionary 회원조회</title>

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

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">회원조회</h1>


					<!-- 웹버전기본정보테이블//모바일감춤 -->
					<div class="d-none d-xl-block ">
						<div class="btn-group me-2">
							<button type="button" class="btn btn-sm btn-outline-success">엑셀</button>
						</div>
					</div>
				</div>
			</main>


			<!-- 웹버전기본정보테이블//모바일감춤 -->
			<div class="d-none d-xl-block ">
				<div style="width: 75%; float: none; margin: 0 auto">

					<form id="" name="" method="get" action="/infra/member/memberList">

						<select name="shIfmmDelNy" id="shIfmmDelNy">
							<option value="">::삭제여부::
							<option value="1" <c:if test="${vo.shIfmmDelNy eq 1 }"> </c:if>>
								Y
							<option value="0" <c:if test="${vo.shIfmmDelNy eq 0 }"> </c:if>>
								N
						</select> <select name="shIfmmDormancyNy" id="shIfmmDormancyNy">
							<option value="">::휴먼여부::
							<option value="0"
								<c:if test="${vo.shIfmmDormancyNy eq 0 }"> </c:if>>N
							<option value="1"
								<c:if test="${vo.shIfmmDormancyNy eq 1 }"> </c:if>>Y
						</select> <select name="shMemberOption" id="shMemberOption">
							<option value="">::검색구문::
							<option value="1"
								<c:if test="${vo.shMemberOption eq 1 }"> </c:if>>이름
							<option value="2" <c:if test="${vo.shMemberOption eq 2 }"></c:if>>아이디
							
							<option value="3" <c:if test="${vo.shMemberOption eq 3 }"></c:if>>닉네임
							
							<option value="4" <c:if test="${vo.shMemberOption eq 4 }"></c:if>>연락처
							
						</select> <input type="text" name="shMemberValue" id="shMemberValue">
						<button class="btn btn-outline-primary" type="submit"
							name="search" id="btnSubmit4">Search</button>
						<!-- 		<input type="reset" name="reset">  -->

						<br> <br> <br>

						<div class="table-responsive" id="mainTable">
							<table class="table table-striped table-hover" 
								data-toggle="table" data-toolbar=".toolbar"
								data-sortable="false" data-height="460">
								<thead>
									<tr>
										<th><input type="checkbox" id="allCheck" onchange="allCheck(this)" > 
										<label for="allCheck">
												No. </label></th>
										<th onclick="sortTD(0)" scope="col">이름 <i
											class="fas fa-sort"> </i></th>
										<th onclick="sortTD(1)" scope="col">아이디 <i
											class="fas fa-sort"> </i></th>
										<th onclick="sortTD(2)" scope="col">닉네임 <i
											class="fas fa-sort"> </i>
										</th>
										<th onclick="sortTD(3)" scope="col">생년월일 <i
											class="fas fa-sort"> </i>
										</th>
										<th onclick="sortTD(4)" scope="col">연락처 <i
											class="fas fa-sort"> </i></th>
										<th onclick="sortTD(5)" scope="col">가입일<i
											class="fas fa-sort"> </i></th>
										<th  scope="col">상태</th>
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
															<input type="checkbox" class="check_all_list"
																onclick="checkAllList(event)">
															<c:out value="${item.ifmmSeq}" />
														</div>
													</td>
													<td><a
														href="/infra/member/memberViewAdmin?ifmmSeq=<c:out value="${item.ifmmSeq}"/>">
															<c:out value="${item.ifmmName}" />
													</a></td>
													<td><c:out value="${item.ifmmId}" /></td>
													<td><c:out value="${item.ifmmNickname}" /></td>
													<td><c:out value="${item.ifmmDob}" /></td>
													<td><c:out value="${item.ifmpNumber}" /></td>
													<td><c:out value="${item.regDateTime}" /></td>
													<td><c:if test="${item.ifmmDormancyNy eq 0}">
															<c:out value="활성" />
														</c:if> <c:if test="${item.ifmmDormancyNy eq 1}">
															<c:out value="휴먼" />
														</c:if></td>
												</tr>
											</tbody>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
					</form>
				</div>
			</div>




			<!-- 모바일버전테이블//웹감춤 -->
			<div class=" d-lg-block d-xl-none">
				<div style="width: 90%; float: none; margin: 0 auto">
					<div class="table-responsive">
						<table class="table table-striped table-hover" data-toggle="table"
							data-toolbar=".toolbar" data-sortable="false" data-height="460">
							<thead>
								<tr>
									<th scope="col">No</th>
									<th scope="col">이름</th>
									<th scope="col">아이디</th>
									<th scope="col">생년월일</th>
									<th scope="col">연락처</th>
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

										<tbody>
											<tr>
												<td scope="row"><c:out value="${item.ifmmSeq}" /></td>
												<td><a
													href="/infra/member/memberViewAdmin?ifmmSeq=<c:out value="${item.ifmmSeq}"/>">
														<c:out value="${item.ifmmName}" />
												</a></td>
												<td><c:out value="${item.ifmmId}" /></td>
												<td><c:out value="${item.ifmmDob}" /></td>
												<td><c:out value="${item.ifmpNumber}" /></td>
											</tr>
										</tbody>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
				</div>
			</div>



			<div class="row text-center" style="width: 100%">
				<div style="width: 100%; float: none; margin: 0 auto">

					<!-- Button trigger modal -->


					<button type="button" class="btn btn-sm btn-outline-success"
						onclick="showPopup();">회원추가</button>
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
									<a href="memberList.html">
										<button type="button" class="btn btn-primary">저장</button>
									</a>
								</div>
							</div>
						</div>
					</div>


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

			<br> <br>


			<c:out value="${vo.startPage}" />
			<nav aria-label="...">
				<ul class="pagination justify-content-center">
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
						<li class="page-item"><a class="page-link"
							href="/infra/member/memberList?thisPage=${vo.startPage - 1}">Previous</a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}"
						varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
								<li class="page-item active"><a class="page-link"
									href="/infra/member/memberList?thisPage=${i.index}">${i.index}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="/infra/member/memberList?thisPage=${i.index}">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${vo.endPage ne vo.totalPages}">
						<li class="page-item"><a class="page-link"
							href="/infra/member/memberList?thisPage=${vo.endPage + 1}">Next</a></li>
					</c:if>
				</ul>
			</nav>

			<script type="text/javascript">
		/* globals Chart:false, feather:false */

		(function() {
			'use strict'

			feather.replace({
				'aria-hidden' : 'true'
			})

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
  function showPopup() { window.open("../main/mainProfileEdit.html", "프로필수정", "width=400, height=300, left=100, top=50"); }
  </script>

			<!-- 팝업 -->
			<script language="javascript">
  function showPopup() { window.open("/infra/member/memberFormAdmin", "회원추가", "width=600, height=500, left=300, top=100"); }
  </script>

			<!-- 검색 -->
			<script
				src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<script src="/infra/resources/js/validation.js"></script>
			<script type="text/javascript">

	$("#btnSubmit4").on(
			"click",
			function() {
				if (!checkNull($("#shMemberOption"), $("#shMemberOption").val(),
				"검색구문을 선택 해 주세요!"))
			retrun
		false;
				if (!checkNull($("#shMemberValue"), $("#shMemberValue").val(),
						"검색어를 입력 해 주세요!"))
					retrun
				false;
			});
	
</script>


<!-- 전체선택 220320 -->
			<script type="text/javascript">
			function allCheck(obj){
			    var chk = $(obj).is(":checked"); // 체크여부

			    var $inp = $('#mainTable_tbody').find('input#checkValue');
			    $inp.each(function(i,v){
			         $(v).prop('checked', chk);
			    });
			}
	</script>
	
<!-- 	정렬 220320 -->
<script>
/* sortingNumber() : 숫자인 실수만으로 되어있을 때, 적용될 함수 */ 

function sortingNumber( a , b ){  

        if ( typeof a == "number" && typeof b == "number" ) return a - b; 

        // 천단위 쉼표와 공백문자만 삭제하기.  
        var a = ( a + "" ).replace( /[,\s\xA0]+/g , "" ); 
        var b = ( b + "" ).replace( /[,\s\xA0]+/g , "" ); 

        var numA = parseFloat( a ) + ""; 
        var numB = parseFloat( b ) + ""; 

        if ( numA == "NaN" || numB == "NaN" || a != numA || b != numB ) return false; 

        return parseFloat( a ) - parseFloat( b ); 
} 


/* changeForSorting() : 문자열 바꾸기. */ 

function changeForSorting( first , second ){  

        // 문자열의 복사본 만들기. 
        var a = first.toString().replace( /[\s\xA0]+/g , " " ); 
        var b = second.toString().replace( /[\s\xA0]+/g , " " ); 

        var change = { first : a, second : b }; 

        if ( a.search( /\d/ ) < 0 || b.search( /\d/ ) < 0 || a.length == 0 || b.length == 0 ) return change; 

        var regExp = /(\d),(\d)/g; // 천단위 쉼표를 찾기 위한 정규식. 

        a = a.replace( regExp , "$1" + "$2" ); 
        b = b.replace( regExp , "$1" + "$2" ); 

        var unit = 0; 
        var aNb = a + " " + b; 
        var numbers = aNb.match( /\d+/g ); // 문자열에 들어있는 숫자 찾기 

        for ( var x = 0; x < numbers.length; x++ ){ 

                var length = numbers[ x ].length; 
                if ( unit < length ) unit = length; 
        } 

        var addZero = function( string ){ // 숫자들의 단위 맞추기 

                var match = string.match( /^0+/ ); 

                if ( string.length == unit ) return ( match == null ) ? string : match + string; 

                var zero = "0"; 

                for ( var x = string.length; x < unit; x++ ) string = zero + string; 

                return ( match == null ) ? string : match + string; 
        }; 

        change.first = a.replace( /\d+/g, addZero ); 
        change.second = b.replace( /\d+/g, addZero ); 

        return change; 
} 


/* byLocale() */ 

function byLocale(){ 

        var compare = function( a , b ){ 

                var sorting = sortingNumber( a , b ); 

                if ( typeof sorting == "number" ) return sorting; 

                var change = changeForSorting( a , b ); 

                var a = change.first; 
                var b = change.second; 

                return a.localeCompare( b ); 
        }; 

        var ascendingOrder = function( a , b ){  return compare( a , b );  }; 
        var descendingOrder = function( a , b ){  return compare( b , a );  }; 

        return { ascending : ascendingOrder, descending : descendingOrder }; 
} 


/* replacement() */ 
 
function replacement( parent ){  
        var tagName = parent.tagName.toLowerCase(); 
        if ( tagName == "table" ) parent = parent.tBodies[ 0 ]; 
        tagName = parent.tagName.toLowerCase(); 
        if ( tagName == "tbody" ) var children = parent.rows; 
        else var children = parent.getElementsByTagName( "li" ); 

        var replace = { 
                order : byLocale(), 
                index : false, 
                array : function(){ 
                        var array = [ ]; 
                        for ( var x = 0; x < children.length; x++ ) array[ x ] = children[ x ]; 
                        return array; 
                }(), 
                checkIndex : function( index ){ 
                        if ( index ) this.index = parseInt( index, 10 ); 
                        var tagName = parent.tagName.toLowerCase(); 
                        if ( tagName == "tbody" && ! index ) this.index = 0; 
                }, 
                getText : function( child ){ 
                        if ( this.index ) child = child.cells[ this.index ]; 
                        return getTextByClone( child ); 
                }, 
                setChildren : function(){ 
                        var array = this.array; 
                        while ( parent.hasChildNodes() ) parent.removeChild( parent.firstChild ); 
                        for ( var x = 0; x < array.length; x++ ) parent.appendChild( array[ x ] ); 
                }, 
                ascending : function( index ){ // 오름차순 
                        this.checkIndex( index ); 
                        var _self = this; 
                        var order = this.order; 
                        var ascending = function( a, b ){ 
                                var a = _self.getText( a ); 
                                var b = _self.getText( b ); 
                                return order.ascending( a, b ); 
                        }; 
                        this.array.sort( ascending ); 
                        this.setChildren(); 
                }, 
                descending : function( index ){ // 내림차순
                        this.checkIndex( index ); 
                        var _self = this; 
                        var order = this.order; 
                        var descending = function( a, b ){ 
                                var a = _self.getText( a ); 
                                var b = _self.getText( b ); 
                                return order.descending( a, b ); 
                        }; 
                        this.array.sort( descending ); 
                        this.setChildren(); 
                } 
        }; 
        return replace; 
} 

function getTextByClone( tag ){  
        var clone = tag.cloneNode( true ); // 태그의 복사본 만들기. 
        var br = clone.getElementsByTagName( "br" ); 
        while ( br[0] ){ 
                var blank = document.createTextNode( " " ); 
                clone.insertBefore( blank , br[0] ); 
                clone.removeChild( br[0] ); 
        } 
        var isBlock = function( tag ){ 
                var display = ""; 
                if ( window.getComputedStyle ) display = window.getComputedStyle ( tag, "" )[ "display" ]; 
                else display = tag.currentStyle[ "display" ]; 
                return ( display == "block" ) ? true : false; 
        }; 
        var children = clone.getElementsByTagName( "*" ); 
        for ( var x = 0; x < children.length; x++){ 
                var child = children[ x ]; 
                if ( ! ("value" in child) && isBlock(child) ) child.innerHTML = child.innerHTML + " "; 
        } 
        var textContent = ( "textContent" in clone ) ? clone.textContent : clone.innerText; 
        return textContent; 
} 
</script>

<!-- 	정렬 220320 -->

<script type="text/javascript">
var myTable = document.getElementById( "mainTable" ); 
var replace = replacement( myTable ); 
function sortTD( index ){    replace.ascending( index );    } 
function reverseTD( index ){    replace.descending( index );    } 
</script>


</body>
</html>

