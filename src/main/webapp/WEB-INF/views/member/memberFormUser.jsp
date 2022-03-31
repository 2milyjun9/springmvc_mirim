<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title> 회원가입</title>

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

	<form method="post" action="/infra/member/memberInstUser">


		<div class="container">
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">
					<a href=".............."> 
					<img src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"  class="rounded mx-auto d-block" alt="..." width="200px"
						height="100px"></a> 
						<br> <br>
					<form class="validation-form" novalidate>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label>이름</label> <input type="text" class="form-control"
									name="ifmmName" placeholder="" value="" required>
								<div class="invalid-feedback">이름을 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>아이디</label> <input type="text" class="form-control"
									name="ifmmId" placeholder="" value="" required>
								<div class="invalid-feedback">아이디를 입력해주세요.</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label>비밀번호</label> <input type="password" class="form-control"
									name="ifmmPassword" placeholder="" value="" required>
								<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>비밀번호확인</label> <input type="password"
									class="form-control" placeholder="" value="" required>
								<div class="invalid-feedback">비밀번호를 재차 입력해주세요.</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label>닉네임</label> <input type="text" class="form-control"
									id="name" name="ifmmNickname" placeholder="" value="" required>
								<div class="invalid-feedback">닉네임을 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>성별</label> <select class="custom-select d-block w-100"
									name="ifmmGenderCd" required>

									<option value="3">남성</option>
									<option value="4">여성</option>
								</select>
								<div class="invalid-feedback">성별 선택해주세요.</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label>통신사</label> <select class="custom-select d-block w-100"
									name="ifmpTelecomCd">
									<option value="28">SKT</option>
									<option value="29">KT</option>
									<option value="30">LGU</option>
									<option value="31">기타</option>
								</select>
								<div class="invalid-feedback">통신사를 선택해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>휴대폰번호
									<button type="button" class="btn btn-primary btn-sm">인증</button>
								</label> <input type="text" class="form-control" name="ifmpNumber"
									placeholder="" required>
								<div class="invalid-feedback">휴대폰번호를 입력해주세요.</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-6 mb-3">
								<label>이메일</label> 
								<input type="hidden" class="form-control"  id="ifmeDefaultNy"  name="ifmeDefaultNy" value="1">
								<input type="hidden" class="form-control"  id="ifmeTypeCd"  name="ifmeTypeCd" value="14">
								<input type="email" class="form-control"
									name="ifmeEmailFull" placeholder="you@example.com" required>
								<div class="invalid-feedback">이메일을 입력해주세요.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label>생년월일<span class="text-muted">&nbsp;</span></label> 
								<input class="form-control" type="text" id="ifmmDob"
							name="ifmmDob" placeholder="생년월일" required value="<c:out value="${item.ifmmDob }"/>"
							autocomplete="off">
								<div class="invalid-feedback">생년월일을 입력해주세요.</div>
							</div>
							
	
						</div>


						<br>
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingOne">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
										aria-expanded="false" aria-controls="flush-collapseOne">
										+ 선택입력 (클릭 시 닫힘)</button>
								</h2>
								<div id="flush-collapseOne" class="accordion-collapse collapse show"
									aria-labelledby="flush-headingOne"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body">


										<div class="row">
			<!-- 								<div class="col-md-6 mb-3">
												<label>국적</label> <select
													class="custom-select d-block w-100" name="ifnaName">
													<option value="">대한민국</option>
													<option value="">미국</option>
													<option value="">일본</option>
												</select>
											</div> -->
											
											<div class="col-md-6 mb-3">
												<label>결혼여부</label> <select
													class="custom-select d-block w-100" name="ifmmMarriageCd">
				
													<option value="13">미혼</option>
													<option value="12">기혼</option>
												</select>
											</div>

						
												<div class="col-md-6 mb-3">
													<label>자녀수</label> <input type="text" class="form-control"
														name="ifmmChildrenNum">

												</div>
							<!-- 					<div class="col-md-6 mb-3">
													<label>결혼기념일<span class="text-muted">&nbsp;</span></label>
													<input type="date" class="form-control"
														name="ifmmMarriagDate">
												</div> -->
								


											<div class="row">
												<div class="col-md-6 mb-3">
													<label>좋아하는 색깔</label> <input type="text"
														class="form-control" placeholder=""
														name="ifmmFavoriteColor">
												</div>

												<div class="col-md-6 mb-3">
													<label>우편번호</label> 
													<input type="hidden" class="form-control"  id="ifmaDefaultNy"  name="ifmaDefaultNy" value="1">
													<input type="hidden" class="form-control" id="ifmaTypeCd"  name="ifmaTypeCd" value="14">
													<input type="hidden" class="form-control" id="ifmaTitle"  name="ifmaTitle" value="">
													<input type="text" class="form-control" placeholder="우편번호찾기" id="ifmaZipcode"  name="ifmaZipcode" value="" 
														 onclick="sample6_execDaumPostcode()">
														 
														 
														<!--   선생님 샘플
														<button type="button" id="btnAddress" class="btn btn-outline-secondary"> <i class="fas fa-search"></i></button>
														 <button type="button" id="btnAddressClear" class="btn btn-outline-secondary"> <i class="fa-solid fa-x"></i></button>
														 <input type="text" id="ifmaAddress1Array0" name="ifmaAddress1Array" 
														 value="" placeholder="주소" class="form-control form-conrol-sm mt-2" readonly>
														 <input type="text" id="ifmaAddress2Array0" name="ifmaAddress2Array" 
														 value="" placeholder="상세주소"  maxlength="50" class="form-control form-conrol-sm mt-2" >  -->
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6 mb-3">
												<label>주소</label> 
												<input type="hidden" class="form-control"  id="ifmeDefaultNy"  name="ifmeDefaultNy" value="1">
												<input type="hidden" class="form-control"  id="ifmeTypeCd"  name="ifmeTypeCd" value="44">
												<input type="text" class="form-control" id="ifmaAddress1" name="ifmaAddress1"  placeholder="주소" value="" readonly>

											</div>
											<div class="col-md-6 mb-3">
												<label>상세주소<span class="text-muted">&nbsp;</span></label> <input
													type="text" class="form-control" 
													id="ifmaAddress2"  name="ifmaAddress2" placeholder="상세주소" maxlength="50" value="">
											</div>
										</div>



										<div class="row">
											<div class="col-md-6 mb-3">
												<label>SNS/홈페이지</label> 
													<input type="hidden" class="form-control"  id="ifaoDefaultNy"  name="ifaoDefaultNy" value="1">
													<select
													class="custom-select d-block w-100" name="ifaoSnsTypeCd">
													<option selected>선택</option>
													<option value="34">페이스북</option>
													<option value="35">인스타그램</option>
													<option value="36">트위터</option>
													<option value="37">카카오톡</option>
												</select>

											</div>
											<div class="col-md-6 mb-3">
												<label>SNS/홈페이지 계정</label> <input type="text"
													class="form-control" name="ifaoUrl" placeholder="">
											</div>
										</div>
								<!-- 		<div class="row">
											<div class="col">
												<br> 취미 <br>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckDefault">
														영화감상 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckChecked" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckChecked">
														골프 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckDefault">
														음악감상 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckChecked" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckChecked">
														트레킹 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckDefault">
														서핑 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckChecked" name="ifmhHobbyCd"> <label
														class="form-check-label" for="flexCheckChecked">
														피아노 </label>
												</div>
											</div>
										</div> -->

									</div>
								</div>
							</div>

						</div>
						<br>



						<div class="row">
							<div class="col">
								모바일마케팅 수신동의
								<div class="form-check form-check-inline">
								
								<input type="hidden" id="ifmmSmsConsentNy" name="ifmmSmsConsentNy" value="1">
								
								<input class="form-check-input" type="radio" id="ifmmSmsConsent" name="ifmmSmsConsent" 
								<c:if test="${item.ifmmEmailConsentNy eq 1 }"> checked </c:if>>
								<label
										class="form-check-label" for="flexRadioDefault5"> YES
									</label>
									
								</div>
								<div class="form-check form-check-inline">
								
								<input type="hidden" id="ifmmSmsConsentNy" name="ifmmSmsConsentNy" value="0">
								
								<input class="form-check-input" type="radio" id="ifmmSmsConsent" name="ifmmSmsConsent" 
								<c:if test="${item.ifmmEmailConsentNy eq 0 }"> checked </c:if>>
								<label
										class="form-check-label" for="flexRadioDefault5"> NO
									</label>
									
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col">
								이메일마케팅 수신동의

									<div class="form-check form-check-inline">
								<input type="hidden" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="0">

								<input class="form-check-input" type="radio" id="ifmmEmailConsent" name="ifmmEmailConsent" 
								<c:if test="${item.ifmmEmailConsentNy eq 0 }"> checked </c:if>>
								<label
										class="form-check-label" for="flexRadioDefault6"> YES
									</label>
								</div>
								
									<div class="form-check form-check-inline">
								<input type="hidden" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="1">

								<input class="form-check-input" type="radio" id="ifmmEmailConsent" name="ifmmEmailConsent" 
								<c:if test="${item.ifmmEmailConsentNy eq 1 }"> checked </c:if>>
								<label
										class="form-check-label" for="flexRadioDefault6"> NO
									</label>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col">
								개인정보수집기간
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="6"> <label class="form-check-label"
										for="flexRadioDefault5">1년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="7"> <label class="form-check-label"
										for="flexRadioDefault6"> 2년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="8"> <label class="form-check-label"
										for="flexRadioDefault6"> 3년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="9"> <label class="form-check-label"
										for="flexRadioDefault6">5년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="10"> <label class="form-check-label"
										for="flexRadioDefault6">10년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="ifmmSaveCd"
										value="11"> <label class="form-check-label"
										for="flexRadioDefault6">탈퇴시 </label>
								</div>
							</div>
						</div>
						<br> <br>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="aggrement" required> <label
								class="custom-control-label" for="aggrement">개인정보 수집 및
								이용에 동의합니다.</label>
						</div>


						<br>
						<div class="col-md-6 mb-3"></div>
						<button class="btn btn-primary btn-lg btn-block" type="submit" id="btnSubmit">가입
							완료</button>
					</form>
				</div>
			</div>
	</form>

	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 2022 Auctionary</p>
	</footer>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	
		window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); 
	</script>


<!-- 선생님샘플
$("btnAddress".on("click", function(){
sample6_execDaumPostcode ();
});

$("#btnAddressClear").on("Click", function(){
$("#ifmaZipcodeArray0").val('');
$("#ifmaAddress1Array0").val('');
}); -->

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
	<!-- jquery ui -->
	<script
		src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<!-- 검색 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

