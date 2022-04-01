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
<title>회원조회</title>

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


<!-- jquery ui CSS -->    
<link href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"> 


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
/* 	#border {   /* 검색틀 */
		border: 1px solid;
		border-color: gray; 
		border-top-style : non;
		border-left-style : non;
		border-bottom-style : non;
		border-left-style : non;
	} */
</style>
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
<!-- 							<div class="collapse" id="상품관리">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="../product/productList.html"
										class="link-dark rounded"> &nbsp; &nbsp;등록상품조회</a></li>
								</ul>
							</div> -->
						</li>
						<li class="mb-1">
							<button
								class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#회원관리">회원관리</button>
<!-- 							<div class="collapse" id="회원관리">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 ">
									<li><a href="../../member/memberList.html"
										class="link-dark rounded"> &nbsp; &nbsp;회원조회</a></li>
									<li><a href="#" class="link-dark rounded"> &nbsp;
											&nbsp;회원수정</a></li>
								</ul>
							</div> -->
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
					<form id="formList" name="formList" method="post" action="/infra/member/memberList">
	<!-- 선택삭제 -->	<input type="hidden" id="rowNumToShow" name="rowNumToShow"  value="<c:out value="${vo.rowNumToShow}"/>"> 					
	<!-- 선택삭제 -->	<input type="hidden"  id="checkboxSeqArray" name="checkboxSeqArray"> 					
					<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>"> 
					<input type="hidden" id="ifmmSeq" name="ifmmSeq"> 
						
		<%-- 			<select name="shMemberOptionDate" id="shMemberOptionDate">
						 <option value="" <c:if test="${empty vo.shMemberOptionDate}"> selected </c:if>>::날짜검색:: 
<!-- 							<option value="">::날짜검색:: -->
							<option value="1" <c:if test="${vo.shMemberOptionDate eq 1 }"> selected</c:if>>가입일
							<option value="2" <c:if test="${vo.shMemberOptionDate eq 2 }"> selected</c:if>>수정일
							<option value="3" <c:if test="${vo.shMemberOptionDate eq 3 }"> selected</c:if>>생일
						</select> 
						  	
	 		<fmt:parseDate var="shMemberDateStart" value="${vo.shMemberDateStart}" pattern="yyyy-MM-dd"/>
    		<input type="text" id="shMemberDateStart" name="shMemberDateStart" value="<fmt:formatDate value="${shMemberDateStart}" pattern="yyyy-MM-dd" />" placeholder="시작일" class="" autocomplete="off"> 
			<fmt:parseDate var="shMemberDateEnd" value="${vo.shMemberDateEnd}" pattern="yyyy-MM-dd"/>
			<input type="text" id="shMemberDateEnd" name="shMemberDateEnd" value="<fmt:formatDate value="${shMemberDateEnd}" pattern="yyyy-MM-dd" />" placeholder="종료일" class="" autocomplete="off">	
		
						<br>
						<select name="shIfmmDelNy" id="shIfmmDelNy">
							<option value="">::삭제여부::
							<option value="1"<c:if test="${vo.shIfmmDelNy eq 1 }">selected </c:if>>Y
							<option value="0"<c:if test="${vo.shIfmmDelNy eq 0 }">selected </c:if>>N
						</select> 
			
						<select name="shIfmmDormancyNy" id="shIfmmDormancyNy" >
							<option value="">::휴먼여부::
							<option value="0" <c:if test="${vo.shIfmmDormancyNy eq 0 }"> selected</c:if>>N
							<option value="1" <c:if test="${vo.shIfmmDormancyNy eq 1 }"> selected</c:if>>Y
						</select> 
			
						<select name="shMemberOption" id="shMemberOption" >
							<option value="">::검색구문::
							<option value="1" <c:if test="${vo.shMemberOption eq 1 }"> selected</c:if>>이름
							<option value="2" <c:if test="${vo.shMemberOption eq 2 }"> selected</c:if>>아이디
							<option value="3" <c:if test="${vo.shMemberOption eq 3 }"> selected</c:if>>닉네임
							<option value="4" <c:if test="${vo.shMemberOption eq 4 }"> selected</c:if>>연락처
						</select> 
					
					<input type="text" name="shMemberValue" id="shMemberValue" value="<c:out value="${vo.shMemberValue}"/>">
					<button class="" type="submit" name="search" id="btnSubmit">검색</button> --%>
					
					
	
				<select name="shMemberOptionDate" id="shMemberOptionDate" class="" >
					<option value="" <c:if test="${empty vo.shMemberOptionDate}">selected</c:if>>::날짜::</option>
					<option value="1" <c:if test="${vo.shMemberOptionDate eq 1}">selected</c:if>>등록일</option>
					<option value="2" <c:if test="${vo.shMemberOptionDate eq 2}">selected</c:if>>수정일</option>
					<option value="3" <c:if test="${vo.shMemberOptionDate eq 3}">selected</c:if>>생일</option>
				</select>
	
				<fmt:parseDate value="${vo.shMemberDateEnd}" var="shMemberDateEnd" pattern="yyyy-MM-dd"/>
				<input type="date" id="" name="shMemberDateStart" value="<c:out value="${vo.shMemberDateStart}"/>" placeholder="시작일" class="" autocomplete="off">
		
				<fmt:parseDate value="${vo.shMemberDateEnd}" var="shMemberDateEnd" pattern="yyyy-MM-dd"/>
				<input type="date" id="" name="shMemberDateEnd" value="<c:out value="${vo.shMemberDateEnd}"/>" placeholder="종료일"  class="" autocomplete="off">
			
				<br>
						<select name="shIfmmDelNy" id="shIfmmDelNy">
							<option value="">::삭제여부::
							<option value="1"<c:if test="${vo.shIfmmDelNy eq 1 }">selected </c:if>>Y
							<option value="0"<c:if test="${vo.shIfmmDelNy eq 0 }">selected </c:if>>N
						</select> 
			
						<select name="shIfmmDormancyNy" id="shIfmmDormancyNy" >
							<option value="">::휴먼여부::
							<option value="0" <c:if test="${vo.shIfmmDormancyNy eq 0 }"> selected</c:if>>N
							<option value="1" <c:if test="${vo.shIfmmDormancyNy eq 1 }"> selected</c:if>>Y
						</select> 
			
						<select name="shMemberOption" id="shMemberOption" >
							<option value="">::검색구문::
							<option value="1" <c:if test="${vo.shMemberOption eq 1 }"> selected</c:if>>이름
							<option value="2" <c:if test="${vo.shMemberOption eq 2 }"> selected</c:if>>아이디
							<option value="3" <c:if test="${vo.shMemberOption eq 3 }"> selected</c:if>>닉네임
						<%-- 	<option value="4" <c:if test="${vo.shMemberOption eq 4 }"> selected</c:if>>연락처 --%>
						</select> 
					
					<input type="text" name="shMemberValue" id="shMemberValue" value="<c:out value="${vo.shMemberValue}"/>">
					<button class="" type="submit" name="search" id="btnSearch">검색</button> 
					
					<br> <br>
						
						
		<div class="table-responsive" id="mainTable">
							<table class="table table-striped table-hover" data-toggle="table" data-toolbar=".toolbar"
								data-sortable="false" data-height="460">
								<thead>
									<tr>
										<th><input type="checkbox" id="checkboxAll" name="checkboxAll"> No.</th>
										<th  scope="col">이름 <i class="fas fa-sort"> </i></th>
										<th  scope="col">아이디 <i class="fas fa-sort"> </i></th>
										<th  scope="col">닉네임 <i class="fas fa-sort"> </i></th>
										<th  scope="col"> 성별 <i class="fas fa-sort"> </i></th>
										<th  scope="col">생년월일 <i class="fas fa-sort"> </i> </th>
										<th  scope="col">연락처 <i class="fas fa-sort"> </i></th>
										<th  scope="col">가입일<i class="fas fa-sort"> </i></th>
										<th scope="col">상태</th>
									</tr>
								</thead>
					<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
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
															<input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${item.ifmmSeq}" />" >
															&nbsp;&nbsp;<c:out value="${item.ifmmSeq}" />
														</div>
													</td>
													<td>
													<a href="javaScript:goMemberView('<c:out value="${item.ifmmSeq}"/>')"><c:out value="${item.ifmmName}" /></a>
													<%-- 	겟방식 <a href="/infra/member/memberViewAdmin?ifmmSeq=<c:out value="${item.ifmmSeq}"/>"> 	<c:out value="${item.ifmmName}" />	</a> --%></td>
													<td><c:out value="${item.ifmmId}" /></td>
													<td><c:out value="${item.ifmmNickname}" /></td>
													<td>
								<%-- 	<c:forEach items="${listCodeGender}" var="itemGender" varStatus="statusGender">
									<c:if test="${item.ifmmGenderCd eq itemGender.ifcdSeq}"><c:out value="${itemGender.ifcdName}"/></c:if></c:forEach> --%>			
														<c:if test="${item.ifmmGenderCd eq 3}"><c:out value="남성" /></c:if> 
														<c:if test="${item.ifmmGenderCd eq 4}"><c:out value="여성" /></c:if>
													</td>
										
													<td><c:out value="${item.ifmmDob}" /></td>
													<%-- 	<td><c:out value="${item.ifmpNumber}" /></td> --%>
													<td>
														<c:set var="numberPhone" value="${item.ifmpNumber }"/>
                	<c:choose>
                		<c:when test="${fn:length(numberPhone) eq 10 }">
							<c:out value="${fn:substring(numberPhone,0,3)}"/>
							- <c:out value="${fn:substring(numberPhone,3,6)}"/>
							- <c:out value="${fn:substring(numberPhone,6,10)}"/>
                		</c:when>
                		<c:otherwise>
							<c:out value="${fn:substring(numberPhone,0,3)}"/>
							- <c:out value="${fn:substring(numberPhone,3,7)}"/>
							- <c:out value="${fn:substring(numberPhone,7,11)}"/>
                		</c:otherwise>
               		</c:choose> </td>
													<td><c:out value="${item.regDateTime}" /></td>
													
													<td><c:if test="${item.ifmmDormancyNy eq 0}"> <c:out value="활성" /> </c:if>
														<c:if test="${item.ifmmDormancyNy eq 1}"> <c:out value="휴먼" /> </c:if></td>
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

					
<%--  겟방식 페이징과 버튼
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
<a href = "/infra/member/memberFormAdmin?thisPage=${vo.thisPage}&shMemberOption=<c:out value="${vo.shMemberOption}"/>
&shMemberValue=<c:out value="${vo.shMemberValue}"/>">  
<button type="button" class="btn btn-sm btn-outline-success"> 회원추가</button> </a> 
								
<a href="/infra/member/memberMultiUele?ifmmSeq=<c:out value="${item.ifmmSeq}"/>
&thisPage=<c:out value="${vo.thisPage}"/>&shMemberOption=<c:out value="${vo.shMemberOption}"/>
&shMemberValue=<c:out value="${vo.shMemberValue}"/>" id="btnModalNelete">
		<button type="button" class="btn btn-sm btn-outline-danger"	data-bs-toggle="modal" data-bs-target="#btnModalNelete">삭제</button></a>

<a href="/infra/member/memberNele?ifmmSeq=<c:out value="${item.ifmmSeq}"/>
&thisPage=<c:out value="${vo.thisPage}"/>&shMemberOption=<c:out value="${vo.shMemberOption}"/>
&shMemberValue=<c:out value="${vo.shMemberValue}"/>" id="btnUpdateDelete">
	<button type="button" class="btn btn-sm btn-outline-danger">삭제</button>  </a> 
							
<a href = "/infra/member/memberFormAdmin?thisPage=${vo.thisPage}&shMemberOption=<c:out value="${vo.shMemberOption}"/>
&shMemberValue=<c:out value="${vo.shMemberValue}"/>">  <button type="button" class="btn btn-sm btn-outline-success"> 회원추가</button>
	</a> 		
				 --%>
		
			

		<!--포스트 페이징과 버튼 -->
			<div class="row text-center" style="width: 100%">
				<div style="width: 100%; float: none; margin: 0 auto">
			<br> 
			<br>
			<nav aria-label="...">
				<ul class="pagination  justify-content-center">
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
						<li class="page-item"><a class="page-link" href="javascript:goMemberList( <c:out value='${vo.startPage - 1}'/>);"> Previous</a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
								<li class="page-item active"><a class="page-link" href="javascript:goMemberList(<c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link" href="javascript:goMemberList( <c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${vo.endPage ne vo.totalPages}">
						<li class="page-item"><a class="page-link" href="javascript:goMemberList( <c:out value='${vo.endPage + 1 }'/>);">Next</a></li>
					</c:if>
				</ul>
			</nav>
	
<a href="javascript:goMemberForm('<c:out value="${item.ifmmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>',
'<c:out value="${vo.shMemberOptionDate}"/>','<c:out value="${vo.shMemberDateStart}"/>','<c:out value="${vo.shMemberDateEnd}"/>');"> 
<button type="button" id = "goMemberForm" class="btn btn-sm btn-outline-success"> 회원등록 </button></a>

<button type="button" id="goUrlMultiNelete" class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#btnModalNelete"> 삭제 </button> 
	
	<div class="modal fade" id="btnModalNelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="modal-title">
										<i class="fas fa-exclamation-circle"></i>삭제 확인!
									</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">정말 삭제하시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
									
							<%-- 		<a href="javascript:goMemberMultiNelete('<c:out value="${item.ifmmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>',
	'<c:out value="${vo.shMemberOptionDate}"/>','<c:out value="${vo.shMemberDateStart}"/>','<c:out value="${vo.shMemberDateEnd}"/>');">  --%>
	<button type="button" class="btn btn-primary" id="btnModalNelete" 	onclick="location.href='javascript:goMemberMultiNelete();'">확인</button>
								</div>
							</div>
						</div>
					</div>    
				</div>
			</div>	
			
		
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
				crossorigin="anonymous"></script>

			<!-- 팝업 -->
			<script language="javascript"> function showPopup() { window.open("/main/mainProfileEdit", "프로필수정", "width=400, height=300, left=100, top=50"); }
 			 </script>

			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<script src="/infra/resources/common/js/validation.js"></script>
			
			<!-- jquery ui -->
			<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
			
		
	<script type="text/javascript">
	
		$("#btnSearch").on( 
				"click", function() {
				if (!checkNull($("#shMemberOption"), $("#shMemberOption").val(),"검색구문을 선택해 주세요!")) 
					return
					false;
				if (!checkNull($("#shMemberValue"), $("#shMemberValue").val(),"검색어를 입력 해 주세요!"))
					retrun
				false;
			});
			</script>
		
<!-- 	<script type="text/javascript">
 겟방식
	$("#btnDelete").on("click", function() {
		var answer = confirm("삭제하시겠습니까?");
		if (answer) { //infra/code/codeGroupDele 이동 
		} else {
			return false;
		}
	});
		$("#btnUpdateDelete").on("click", function() {
				var answer = confirm("삭제하시겠습니까?");
				if (answer) { //infra/code/codeGroupNele 이동 
				} else {
					return false;
				}
			}); 
		</script> -->
			
<!-- 	선생님샘플소스
	<script type="text/javascript">
	$("#btnDelete").on("click", function(){
	      if(   $("inputinput[name=checkboxSeq]:checked").length > 0 {
	         $("input:hidden[name=exDeleteType]").val(2);
	         $(".modal-title").text("확 인");
	         $(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
        	 $("#btnModalUelete").hide();
	         $("#btnModalDelete").show(); 
	         $("#modalConfirm").modal("show");
	         } else {
	         $(".modal-title").text("확 인");
	         $(".modal-body").text("데이터를 선택 해 주세요!");
	         $("#modalAlert").modal("show");
	      }
	});   
			</script>  -->
			
<!-- 			미림활용
			<script type="text/javascript">
			$("#btnNelete").on("click", function(){
	      if(   $("inputinput[name=checkboxSeq]:checked").length > 0 {
	         $("input:hidden[name=exDeleteType]").val(2);
	         $(".modal-title").text("확 인");
	         $(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
/*         	 $("#btnModalUelete").hide(); */
	         $("#btnModalNelete").show(); 
	         $("#modalConfirm").modal("show");
	         } else {
	         $(".modal-title").text("확 인");
	         $(".modal-body").text("데이터를 선택 해 주세요!");
	         $("#modalAlert").modal("show");
	      }
	});   
			</script>   -->
	
	
		<script type="text/javascript">
	       $("#btnModalNelete").on("click", function() {
				$("input[name=checkboxSeq]:checked").each(function() { 
					checkboxSeqArray.push($(this).val());
			});
				$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);			
				form.attr("action", goUrlMultiNelete).submit();
			});
			</script>

	
	 <script type="text/javascript">
		var seq = $("input:hidden[name=ifmmSeq]");
		
	 	goMemberList = function(seq){
			alert(seq);
					$("#thisPage").val(seq);
					$("#formList").submit();
			}
		 goMemberView = function(seq){
			 alert(seq);
					$("#ifmmSeq").val(seq);
					$("#formList").attr("action","/infra/member/memberViewAdmin");
					$("#formList").submit();
			}
		 goMemberForm = function(seq){
				$("#formList").attr("action","/infra/member/memberFormAdmin");
				$("#formList").submit();
			}	 
		 
		goMemberMultiNelete = function(seq){
				$("#ifmmSeq").val(seq);
				$("#formList").attr("action","/infra/member/memberMultiNele");
				$("#formList").submit(); 
			}	 


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
		
/* 		$("#btnModalNelete").on("click", function(){
			$("input[name=checkboxSeq]:checFked").each(function() {
				checkboxSeqArray.push($(this).val());	
			});
			$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);	
			/* $("#modalConfirm").modal("hide"); */
			/* $("#formList").attr("action", "memberMultiUele").submit(); 
	 		$("#formList").attr("action", goUrlMultiUele).submit();
		}); */
		</script>
		
		
		<script type="text/javascript"> 
		$(document).ready(function() {
			$("#shMemberDateStart").datepicker(); //시작일데이트피커
			$("#shMemberDateEnd").datepicker(); //종료일데이트피커
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

