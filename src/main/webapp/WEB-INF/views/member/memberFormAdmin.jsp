<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 회원등록</title>

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

.input-form {
	max-width: 500px;
	margin-top: 10px;
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
	<br>

	<form method="post" action="/infra/member/memberInstAdmin">
		<div class="container">

			<div class="input-form col-md-9 mx-auto">
				<h3 align="center">회원등록</h3>
				<br>
				<div class="row">
					<div class="col-md-12 mb-3">
						<input class="form-control" type="text" name="ifmmId"
							placeholder="아이디"> <br> <input class="form-control"
							type="text" name="ifmmPassword" placeholder="비밀번호">
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 mb-3">
						<input class="form-control" type="text" name="ifmmName"
							placeholder="이름"> <br> <input class="form-control"
							type="text" name="ifmmNickname" placeholder="닉네임">
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 mb-3">

						<select class="form-select form-select-sm" id="ifmmGenderCd"
							name="ifmmGenderCd">

							<option value="">성별</option>
							<c:forEach items="${codeGender}" var="itemGender"
								varStatus="statusGender">
								<option value="<c:out value="${itemGender.ifcdSeq}"/>"
									<c:if test="${item.ifmmGenderCd eq itemGender.ifcdSeq}">selected</c:if>>
									<c:out value="${itemGender.ifcdName}" /></option>
							</c:forEach>
						</select> <br> <input class="form-control" type="text" id="ifmmDob"
							name="ifmmDob" placeholder="생년월일"
							value="<c:out value="${item.ifmmDob }"/>">
					</div>
				</div>
				<!-- 						<div class="col-md-6 mb-3">
							<select  class="form-select form-select-sm" id="ifmpTelecomCd" name="ifmpTelecomCd">
								<option value="">통신사</option>
								<option value="28">SKT</option>
								<option value="29">KT</option>
								<option value="30">LGU</option>
								<option value="31">기타</option>
							</select> <input type="text" name="ifmpNumber" placeholder="연락처">
						</div> -->
				<div class="row">
					<div class="col-md-12 mb-3">
						<select class="form-select form-select-sm" id="ifmpTelecomCd"
							name="ifmpTelecomCd">
							<option value="">통신사</option>
							<c:forEach items="${codeTelecom}" var="itemTelecom"
								varStatus="statusTelecom">
								<option value="<c:out value="${itemTelecom.ifcdSeq}"/>"
									<c:if test="${item.ifmpTelecomCd eq itemTelecom.ifcdSeq}">selected</c:if>><c:out
										value="${itemGender.ifcdName}" /></option>
							</c:forEach>
						</select> <br> <input class="form-control" type="text" id="ifmpNumber"
							name="ifmpNumber" placeholder="휴대폰번호 '-'를 빼고적어주세요"
							value="<c:out value="${item.ifmpNumber }"/>"> <br>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 mb-3">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id=""
								required> <label class="custom-control-label"
								for="aggrement">개인정보 수집 및 이용에 동의합니다. </label>
						</div>
						<br>

					</div>
				</div>
				<div class="row">
					<div class="col-md-12 mb-3">
						<button class="btn btn-primary btn-sm btn-block" type="submit"
							id="btnSubmit">가입 완료</button>
					</div>
				</div>
			</div>
		</div>
	</form>


	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 2022 Auctionary</p>
	</footer>

	<!-- 검색 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	<script type="text/javascript">
		$("#btnSubmit").on("click", function() {
			if (!checkId($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력 해 주세요!"))
				retrun
			false;
		});
	</script>

	<!-- jquery ui -->
	<script
		src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	---
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
	</script>
</body>
</html>
