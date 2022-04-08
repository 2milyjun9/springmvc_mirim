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



<!-- 제이쿼리 ui CSS -->
<link
	href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">
	
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="shortcut icon" type="image/x-icon"
	href="../../../images/golf3.png">

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

<!--  탭 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<style>
* {
	font-family: 'Dongle', sans-serif;
	font-family: 'Gowun Batang', serif;
	font-family: 'Gowun Dodum', sans-serif;
	text-decoration-line: none;
	
	margin : 0; 
	padding : 0; 
}

#wrap{
margin : 0 auto;
overflow : hidden;
padding-top : 10px;
}

div>article{
float : left;
margin-left : 10px;
margin-right : 10px;
margin-bottom : 10px;
}


body {
	width: 80%;
	float: none;
	margin: 0 auto;
}


#login {
	float: right;
}

/* Modal Content/Box */
.modal-content {
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 20%; /* Could be more or less, depending on screen size */
}

a { /*링크 줄안가게하기*/
	text-decoration: none;
}


</style>

<title>Main</title>
</head>

<body>

	<!-- 웹버전로고 -->
	<div class="d-none d-xl-block ">
		<a href="./productMainUser"> <img
			src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"
			class="rounded mx-auto d-block" alt="..." width="300px"
			height="150px"></a> <br> <br> <br>
	</div>

	<!-- 모바일버전로고 -->
	<div class=" d-lg-block d-xl-none">
		<a href="./productMainUser"> <img
			src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"
			class="rounded mx-auto d-block" alt="..." width="200px"
			height="100px"></a>
	</div>

	<p align="right">
		<b><c:out value="${sessName}" /></b> 님 환영합니다. </p>
		
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<form class="d-flex" id="" name="" method="post" action="/infra/product/productMainUser">

				<%-- 	<select name="shAcprStatusCd" id="shAcprStatusCd">
					<option value="">상품상태
					<option value="55"
						<c:if test="${vo.shAcprStatusCd eq 55 }"> selected </c:if>>
						경매중
					<option value="56"
						<c:if test="${vo.shAcprStatusCd eq 56 }"> selected  </c:if>>
						경매완료
					<option value="57"
						<c:if test="${vo.shAcprStatusCd eq 57 }"> selected </c:if>>
						경매취소
					<option value="58"
						<c:if test="${vo.shAcprStatusCd eq 58 }"> selected </c:if>>
						경매실패
				</select>  --%>
				<select name="shProductOption" id="shProductOption">
					<option value="">::검색구문::
					<option value="3"
						<c:if test="${vo.shProductOption eq 3 }"> selected </c:if>>
						상품번호
					<option value="4"
						<c:if test="${vo.shProductOption eq 4 }"> selected </c:if>>
						게시물제목
					<option value="5"
						<c:if test="${vo.shProductOption eq 5 }"> selected </c:if>>
						게시물내용
					<option value="5"
						<c:if test="${vo.shProductOption eq 6 }"> selected </c:if>>
						닉네임
				</select> <input type="text" name="shProductValue" id="shProductValue">
				<!-- <input type="reset" name="reset"> -->
				<button class="btn btn-outline-primary" type="submit" name="search"
					id="btnSubmit5">검색</button>

			</form>
			<div align="right">
				<ul class=" navbar-nav me-auto my-2 my-lg-0
				navbar-nav-scroll"
					style="-bs-scroll-height: 100px;">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarScrollingDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <i
							class="fas fa-user"> </i>
					</a>
						<ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
							<li><a class="dropdown-item"
								href="../product/productFormUser">상품등록</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">로그아웃</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- 			<div align="right">
				<button type="button" class="btn btn-secondary position-relative">
					<i class="fas fa-comment"></i> <span
						class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle">
						<span class="visually-hidden"> New alerts</span>
					</span>
				</button>
			</div> -->
		</div>
	</nav>


<%-- 		<c:if test="${not empty sessSeq}">
			<button type="button" class="btn btn-danger btn-sm" name=""
				id="btnLogout"></button>
		</c:if> --%>
		
	<form class="d-flex" id="" name="" method="post" action="/infra/product/productMainUser">
	</form>


<br> <br> 


				<img src="https://github.com/mdo.png" alt="mdo" width="50" height="50" class="rounded-circle"> 
					<b> <c:out value="${item.ifmmNickname}" /> <c:out value="${item.ifmmGrade}" /></b>
	
<br> <br>

<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#qwe">경매중</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#asd">경매완료</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#zxc">리뷰</a>
  </li>
</ul>
<div class="tab-content">
  <div class="tab-pane fade show active" id="qwe">

<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">


				<div class="album py-5 bg-light">
					<div class="container">
						<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
							<div class="col" id="wrap">
								
								<div class="card shadow-sm">
							<article>		<svg class="bd-placeholder-img card-img-top" width="100%"
										height="225" xmlns="http://www.w3.org/2000/svg" role="img"
										aria-label="Placeholder: Thumbnail"
										preserveAspectRatio="xMidYMid slice" focusable="false">
										<title>Placeholder</title><rect width="100%" height="100%"
											fill="#55595c" />
										<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>


									<div class="card-body" id="">
										<a 	href="/infra/product/productViewUser?acprSeq=<c:out value="${item.acprSeq}"/>">
										<p class="card-text"><c:out value="${item.acprProductName}" />
										</p></a>
										
									</div> 
									
									</article>
								</div>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>
		</c:otherwise>
	</c:choose>
	
  </div>
  <div class="tab-pane fade" id="asd">
   
   
<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">


				<div class="album py-5 bg-light">
					<div class="container">
						<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
							<div class="col" id="wrap">
								
								<div class="card shadow-sm">
							<article>		<svg class="bd-placeholder-img card-img-top" width="100%"
										height="225" xmlns="http://www.w3.org/2000/svg" role="img"
										aria-label="Placeholder: Thumbnail"
										preserveAspectRatio="xMidYMid slice" focusable="false">
										<title>Placeholder</title><rect width="100%" height="100%"
											fill="#55595c" />
										<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>


									<div class="card-body" id="">
										<a 	href="/infra/product/productViewUser?acprSeq=<c:out value="${item.acprSeq}"/>">
										<p class="card-text"><c:out value="${item.acprProductName}" />
										</p></a>
										
									</div> 
									
									</article>
								</div>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>
		</c:otherwise>
	</c:choose>
	
  </div>
  <div class="tab-pane fade" id="zxc">
 
 
<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">


				<div class="album py-5 bg-light">
					<div class="container">
						<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
							<div class="col" id="wrap">
								
								<div class="card shadow-sm">
							<article>		<svg class="bd-placeholder-img card-img-top" width="100%"
										height="225" xmlns="http://www.w3.org/2000/svg" role="img"
										aria-label="Placeholder: Thumbnail"
										preserveAspectRatio="xMidYMid slice" focusable="false">
										<title>Placeholder</title><rect width="100%" height="100%"
											fill="#55595c" />
										<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>


									<div class="card-body" id="">
										<a 	href="/infra/product/productViewUser?acprSeq=<c:out value="${item.acprSeq}"/>">
										<p class="card-text"><c:out value="${item.acprProductName}" />
										</p></a>
										
									</div> 
									
									</article>
								</div>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>
		</c:otherwise>
	</c:choose>
	
  </div>
</div>


	<!-- jquery ui -->
	<script
		src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<!-- 검색 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/infra/resources/common/js/validation.js"></script>

			
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
	

	<!--  탭 -->
	  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>


