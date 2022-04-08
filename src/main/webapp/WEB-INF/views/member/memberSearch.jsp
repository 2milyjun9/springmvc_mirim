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

<img src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"  class="rounded mx-auto d-block" alt="..." width="200px"
						height="100px">


					<form id="formList" name="formList" method="post" action="/infra/member/memberList">		
					<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>"> 
					<input type="hidden" id="ifmmSeq" name="ifmmSeq"> 
					</form>
					
					
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
											<td><input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${item.ifmmSeq}" />" >
															&nbsp;&nbsp;<c:out value="${item.ifmmSeq}" /></td>
												<td><c:out value="${item.ifmmName}" /></td>
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
<br><br>


	<div class="row text-center" style="width: 100%">
				<div style="width: 100%; float: none; margin: 0 auto">
			<a href="javascript:goMemberForm('<c:out value="${item.ifmmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>',
'<c:out value="${vo.shMemberOptionDate}"/>','<c:out value="${vo.shMemberDateStart}"/>','<c:out value="${vo.shMemberDateEnd}"/>');"> 
<button type="button" id ="goMemberForm" class="btn btn-sm btn-outline-success"> 회원선택 </button></a>
			</div>
			</div>
			
			