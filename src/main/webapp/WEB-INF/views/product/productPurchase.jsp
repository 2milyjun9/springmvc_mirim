<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<% pageContext.setAttribute("br", "\n"); %>  <!-- 설명엔터 -->


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 경매신청 </title>

<!-- 제이쿼리 ui CSS -->
<link
	href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">
	
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


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
}

body {
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 30px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}


</style>
</head>
<body>



<form method="post" action="/infra/product/productInstUser">

	<div class="container">
			<div class="input-form col-md-9 mx-auto">
<!-- 				<h3 align="center">상품등록</h3> -->
				<div class="row">
					<div class="col-md-12 mb-3">
	<img src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"  class="rounded mx-auto d-block" alt="..." width="200px"
						height="100px">
						<br>  			
					</div>
				</div>

	<p align="right">
		<b><c:out value="${sessName}" /></b> 님 환영합니다. </p>
		
				
<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingOne">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
										aria-expanded="false" aria-controls="flush-collapseOne">
										+ 상품 확인하기 (클릭 시 닫힘)</button>
								</h2>
								<div id="flush-collapseOne" class="accordion-collapse collapse show"
									aria-labelledby="flush-headingOne"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body">
			<div id="carousel" class="carousel slide"
			data-bs-ride="carousel" style="width: 300px; float:left; margin-right:20px; ">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="${pageContext.request.contextPath}/resources/xdmin/images/test1.PNG"
						class="d-block w-100" alt="..." width="50" height="300">
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/resources/xdmin/images/test2.PNG"
						class="d-block w-100" alt="..." width="50" height="300">
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
						<tbody>
						<tr style="text-align:center">
						<th colspan="2"> <h5><c:out value="${item.acprProductName}" /> </h5></th>
						</tr>
							<tr>
								<th>No.<c:out value="${item.acprSeq}" /></th>
							</tr>
							<tr>
								<th>거래방식: <c:if test="${item.acprPickupCd eq 51}">
										<c:out value="직거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 52}">
										<c:out value="택배거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 53}">
										<c:out value="퀵거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 54}">
										<c:out value="협의" />
									</c:if></th>
							</tr>
							<tr>
								<th>등록일: <c:out value="${item.regDateTime}" /></th>
							</tr>
							<tr>
								<th>마감일: <c:out value="${item.acprEndDate}" /> </th>
							</tr>
							<tr>
								<th>시작가: <c:out value="${item.acprPriceStart}" /></th>
							</tr>
							<tr>
								<th>현재가:  <c:out value="${item.acprPriceNow}" /> </th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>	
		</div>
	</div>
</div>								

						
						<br><br>	
						
			<label for="customRange3" class="form-label">Example range</label>
<input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">


<br> <br>
				<div class="row">
					<div class="col-md-12 mb-3">
						<input class="form-control" type="text" id="acpsMinPrice"
							name="acpsMinPrice" placeholder="최소가격" required> <br> 
					</div>
										<div class="col-md-12 mb-3">
						<input class="form-control" type="text" id="acpsMaxPrice"
							name="acpsMaxPrice" placeholder="최대가격" required> <br> 
					</div>
				</div>


				<div class="row">
					<div class="col-md-12 mb-3">

						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id="aggrement1"
								required > <label class="custom-control-label" for="aggrement1"
								>개인정보 수집 및 이용에 동의합니다. </label>
						</div>
						<br>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="aggrement2"  required> <label
								class="custom-control-label" for="aggrement2"> 진행 약관에
								동의합니다. </label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 mb-3">
						<button class="btn btn-primary btn-sm btn-block" type="submit"
							id="btnSubmit">등록 완료</button>
					</div>
				</div>
			</div>
		</div>
	</form>


	<!-- jquery ui -->
	<script
		src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("acprEndDate").datepicker();
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

	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 2022 Auctionary</p>
	</footer>
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	
		window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); 
	</script>

<!-- 검색 -->
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<script src="/infra/resources/js/validation.js"></script>
			<script type="text/javascript">

$("#btnSubmit").on(
			"click",
			function() {
				if (!checkId($("#ifmmId"), $("#ifmmId").val(),
				"아이디를 입력 해 주세요!"))
			retrun
		false;	
			});
	
</script>

</body>
</html>
