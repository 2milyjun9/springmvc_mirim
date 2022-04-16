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

<title>상품뷰</title>
</head>

<body>

	<!-- 웹버전로고 -->
	<div class="d-none d-xl-block ">
		<a href="./productMainUser"> <img
			src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"
			class="rounded mx-auto d-block" alt="..." width="300px"
			height="150px"></a> 
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
		
		
		
	 <!-- 기본값 히든처리 -->
	<form id="formView" action="" method="post">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${vo.ifmmSeq}"/>">
	<input type="hidden" id="acprSeq" name="acprSeq" value="<c:out value="${vo.acprSeq}"/>">
	<input type="hidden" id="shAcprDelNy" name="shAcprDelNy" value="<c:out value="${vo.shAcprDelNy}"/>">
	<input type="hidden" id="shAcprProductName" name="shAcprProductName" value="<c:out value="${vo.shAcprProductName}"/>">
	<input type="hidden" id="shProductOption" name="shProductOption" value="<c:out value="${vo.shProductOption}"/>">
	<input type="hidden" id="shProductValue" name="shProductValue" value="<c:out value="${vo.shProductValue}"/>">
	</form>
 
		
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<form class="d-flex" id="productEdit" name="productEdit" method="post" action="/infra/product/productMainUser">

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
						<ul class="dropdown-menu"
							aria-labelledby="navbarScrollingDropdown">
					
							<li><a class="dropdown-item"
								href="../product/productFormUser">상품등록</a></li>
							<li><hr class="dropdown-divider"></li>
						<li>	<c:if test="${not empty sessSeq}"> <a class="dropdown-item" id="btnLogout">로그아웃</a></c:if> </li>
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

	<br>
				<a href="/infra/member/memberViewUser?thisPage=<c:out value="${vo.thisPage}"/>&shMemberOption=
				 <c:out value="${vo.shMemberOption}"/>&shValue=<c:out value="${vo.shMemberValue}"/>">
					<img src="https://github.com/mdo.png" alt="mdo" width="50"
					height="50" class="rounded-circle"> 
					<b> <c:out
							value="${item.ifmmNickname}" /> <c:out value="${item.ifmmGrade}" /></b>
				</a> 
			 <hr>
		
		<div id="carousel" class="carousel slide"
			data-bs-ride="carousel" style="width: 400px; float:left; margin-right:50px; ">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="${pageContext.request.contextPath}/resources/xdmin/images/test1.PNG"
						class="d-block w-100" alt="..." width="200" height="400">
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/resources/xdmin/images/test2.PNG"
						class="d-block w-100" alt="..." width="200" height="400">
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carousel" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carousel" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>

	<br>

	
	<!-- 웹버전기본정보테이블//모바일감춤 -->
			<div id="mainTable" class="row text-center">
				<div class="table-responsive">
					<table class="table" id="table">
					
						<thead>
						<tr style="text-align:right">
						<th colspan="2"> <b><c:out value="${item.acprProductName}" /> </b></th>
						</thead>
						<tbody>
							<tr>
								<th>상품번호</th>
								<td><c:out value="${item.acprSeq}" /></td>
							</tr>
						<tr>
								<th>거래희망</th>
								<td><c:if test="${item.acprPickupCd eq 51}">
										<c:out value="직거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 52}">
										<c:out value="택배거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 53}">
										<c:out value="퀵거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 54}">
										<c:out value="협의" />
									</c:if></td>
							</tr>
							<tr>
								<th>등 록 일</th>
								<td><c:out value="${item.regDateTime}" /></td>
							</tr>
							<tr>
								<th>마 감 일</th>
								<td><b><c:out value="${item.acprEndDate}" /></b></td>
							</tr>
							<tr>
								<th>시 작 가</th>
								<td><c:out value="${item.acprPriceStart}" /></td>
							</tr>
							<tr>
								<th>현 재 가</th>
								<td><b> <c:out value="${item.acprPriceNow}" />
								</b></td>
							</tr>
							<tr>
								<th>지원자수</th>
								<td> </td>
							</tr>
							<tr>
								<th>설   명</th>
								<td  height="100"><c:out value="${item.acprDetails}" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>	
	</main>
	
	
<%-- 		<c:if test="${item.acprStatusCd eq 55}">
											<c:out value="경매진행중" />
										</c:if> <c:if test="${item.acprStatusCd eq 56}">
											<c:out value="경매완료" />
										</c:if> <c:if test="${item.acprStatusCd eq 57}">
											<c:out value="경매취소" />
										</c:if> <c:if test="${item.acprStatusCd eq 58}">
											<c:out value="경매실패" />
										</c:if> --%>
								

<%-- 	<!-- 웹버전기본정보테이블//모바일감춤 -->
	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<div class="d-none d-xl-block ">
			<div id="mainTable" class="row text-center"
				style="width: 85%; white-space: nowrap;">
				<div class="table-responsive">
					<table class="table table-hover" id="table" data-toggle="table"
						data-toolbar=".toolbar" data-sortable="false" data-height="460">
						<thead>
						</thead>
						<tbody>
							<tr>

								<th class="table-secondary">등록일</th>
								<td><c:out value="${item.regDateTime}" /></td>
								<th class="table-secondary">마감일</th>
								<td><b><c:out value="${item.acprEndDate}" /></b></td>

							</tr>
							<tr>
								<th class="table-secondary">시작가</th>
								<td><c:out value="${item.acprPriceStart}" /></td>
								<th class="table-secondary">현재가</th>
								<td><b> <c:out value="${item.acprPriceNow}" />
								</b></td>
							</tr>

							<tr>

								<th class="table-secondary" height="100">내용</th>
								<td colspan="3"><c:out value="${item.acprDetails}" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main> --%>
	<br>

		
<!-- 		겟방식 -->
<%-- 	<div class="row text-center" style="width: 100%">
		<div style="width: 100%; float: none; margin: 0 auto">
			<a href="/infra/product/productMainUser?thisPage=<c:out value="${vo.thisPage}"/>&shProductOption=
				 <c:out value="${vo.shProductOption}"/>&shValue=<c:out value="${vo.shProductValue}"/>">
				<button type="button" class="btn btn-sm btn-primary">목록</button>
			</a> 
			<a href="/infra/product/productPurchase?thisPage=<c:out value="${vo.thisPage}"/>&shProductOption=
				 <c:out value="${vo.shProductOption}"/>&shValue=<c:out value="${vo.shProductValue}"/>">
				<button type="button" class="btn btn-sm btn-warning">경매신청</button></a>
		</div>
	</div> --%>
	
	
	<div class="row text-center" style="width: 100%">
			<div style="width: 100%; float: none; margin: 0 auto">
	
<a href="javascript:goProductEdit('<c:out value="${item.acprSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shProductOption}"/>','<c:out value="${vo.shProductValue}"/>',
'<c:out value="${vo.shProductOptionDate}"/>','<c:out value="${vo.shProductDateStart}"/>','<c:out value="${vo.shProductDateEnd}"/>');"> <button type="button" class="btn btn-sm btn-outline-warning"> 수정 </button></a>
<a href="javascript:goProductList('<c:out value="${item.acprSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shProductOption}"/>','<c:out value="${vo.shProductValue}"/>',
'<c:out value="${vo.shProductOptionDate}"/>','<c:out value="${vo.shProductDateStart}"/>','<c:out value="${vo.shProductDateEnd}"/>');"> <button type="button" class="btn btn-sm btn-outline-secondary"> 목록 </button></a>

<button type="button" id="" class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#btnModalNelete"> 삭제 </button> 
	
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
									
									<a href="javascript:goProductNelete
									('<c:out value="${item.acprSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shProductOption}"/>',
									'<c:out value="${vo.shProductValue}"/>','<c:out value="${vo.shProductOptionDate}"/>','<c:out value="${vo.shProductDateStart}"/>',
									'<c:out value="${vo.shProductDateEnd}"/>');"> 
	<button type="button" class="btn btn-primary" id=""  >확인</button></a>
								</div>
							</div>
						</div>
					</div>   
				
			</div>
		</div>

	<br>
	<br>
	
</body>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/common/js/validation.js"></script>

	<!-- jquery ui -->
	<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

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
			
			
<!-- 		****************************포스트방식**************************** -->
	
		<script type="text/javascript">
		var seq = $("input:hidden[name=acprSeq]");
		
		goProductist = function(){
			$("#formList").attr("action", "/infra/product/ProductMainUser2");
			$("#formList").submit();
				};
		
	 	goProductEdit = function(seq){
			alert(seq);
					$("#thisPage").val(seq);
					$("#formList").attr("action","/infra/product/prouductViewUser");
					$("#formList").submit();
			};

		goProductNelete = function(seq){
					$("#formView").attr("action", "/infra/product/productNele");
					$("#formView").submit();
						};
		</script>
<!-- 		****************************포스트방식**************************** -->		

</html>