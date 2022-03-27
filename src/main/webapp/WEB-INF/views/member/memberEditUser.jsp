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
<title>회원수정</title>


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

	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">

				<a href="../main.jsp"> 
					<img src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"  class="rounded mx-auto d-block" alt="..." width="200px"
						height="100px"></a>  <br> <br>
				<br>
				<form class="validation-form" novalidate>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" placeholder="" value="정미림"  disabled>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">아이디</label> <input type="text"
								class="form-control" id="nickname" placeholder="" value="mija345"
								 disabled>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">비밀번호</label> <input  type="password"
								class="form-control" id="name" placeholder="" value="" required>
							<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">비밀번호확인</label> <input  type="password"
								class="form-control" id="nickname" placeholder="" value=""
								required>
							<div class="invalid-feedback">비밀번호를 재차 입력해주세요.</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="root">통신사</label> <select
								class="custom-select d-block w-100" id="root">
								<option>SKT</option>
								<option>KT</option>
								<option>LGU</option>
								<option>기타</option>
							</select>
							<div class="invalid-feedback">통신사를 선택해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="code">휴대폰번호
								<button type="button" class="btn btn-primary btn-sm">인증</button>
							</label> <input type="text" class="form-control" id="code" placeholder=""
							 value="010-9245-6252"	required>
							<div class="invalid-feedback">휴대폰번호를 입력해주세요.</div>
						</div>
					</div>


					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="email">이메일</label> <input type="email"
								class="form-control" id="email"  value="mija345@naver.com"
								required>
							<div class="invalid-feedback">이메일을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="address2">생년월일<span class="text-muted">&nbsp;</span></label>
							<input type="date" class="form-control" id="dob
								placeholder=""  value="1991-09-07">
						</div>
					</div>


					<br>
					<div class="accordion accordion-flush" id="accordionFlushExample">
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingOne">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="false" aria-controls="flush-collapseOne">
									+ 선택입력 </button>
							</h2>
							<div id="flush-collapseOne" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">


									<div class="row">
										<div class="col-md-6 mb-3">
											<label for="root">국적</label> <select
												class="custom-select d-block w-100" id="root">
												<option>대한민국</option>
												<option>미국</option>
												<option>영국</option>
												<option>기타</option>
											</select>

										</div>
										<div class="col-md-6 mb-3">
											<label for="root">결혼여부</label> <select
												class="custom-select d-block w-100" id="root">
												<option>선택</option>
												<option>미혼</option>
												<option selected> 기혼</option>
											</select>
										</div>

										<div class="row">
											<div class="col-md-6 mb-3">
												<label for="address">자녀수</label> <td><input type="text" class="form-control"
								id="floatingInput" value="2"></td>

											</div>
											<div class="col-md-6 mb-3">
												<label for="address2">결혼기념일<span class="text-muted">&nbsp;</span></label>
												<input type="date" class="form-control" id="marriage"  value="2016-04-16">
											</div>
										</div>


										<div class="row">
											<div class="col-md-6 mb-3">
													<label for="code">좋아하는 색깔</label> <input type="text"
														class="form-control" id="code" placeholder="" required>
												</div>

												<div class="col-md-6 mb-3">
													<label for="code">우편번호</label> <input type="text"
														class="form-control" id="code" placeholder="" value="11111"required>
												</div>
											</div>
										</div>



										<div class="row">
											<div class="col-md-6 mb-3">
												<label for="address">주소</label> <input type="text"
													class="form-control" id="address" placeholder="" value="서울시 강서구 가양동"
													required>
												<div class="invalid-feedback">주소를 입력해주세요.</div>
											</div>
											<div class="col-md-6 mb-3">
												<label for="address2">상세주소<span class="text-muted">&nbsp;</span></label>
												<input type="text" class="form-control" id="address2"
													placeholder="상세주소를 입력해주세요." value="한강아파트 105동">
											</div>
										</div>



										<div class="row">
											<div class="col-md-6 mb-3">
												<label for="root">SNS/홈페이지</label> <select
													class="custom-select d-block w-100" id="root">
													<option >선택</option>
													<option>페이스북</option>
													<option selected>인스타그램</option>
													<option>트위터</option>
													<option>카카오톡</option>
													<option>기타</option>
												</select>

											</div>
											<div class="col-md-6 mb-3">
												<label for="code">SNS/홈페이지 계정</label> <input type="text"
													class="form-control" id="code" placeholder="" value="2milyjun9" required>
											</div>
										</div>
										<div class="row">
											<div class="col">
												<br> 취미 <br>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault" checked> <label
														class="form-check-label" for="flexCheckDefault">
														영화감상 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckChecked" checked> <label
														class="form-check-label" for="flexCheckChecked">
														골프 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault"> <label
														class="form-check-label" for="flexCheckDefault">
														음악감상 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckChecked"> <label
														class="form-check-label" for="flexCheckChecked">
														트레킹 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckDefault"> <label
														class="form-check-label" for="flexCheckDefault">
														서핑 </label>
												</div>
												<div class="form-check form-check-inline ">
													<input class="form-check-input" type="checkbox" value=""
														id="flexCheckChecked"> <label
														class="form-check-label" for="flexCheckChecked">
														피아노 </label>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>

						</div>
						<br>
						<div class="row">
							<div class="col">
								모바일마케팅 수신동의
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="mobile"
										id="flexRadioDefault5"> <label
										class="form-check-label" for="flexRadioDefault5"> YES
									</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="mobile"
										id="flexRadioDefault6" checked> <label
										class="form-check-label" for="flexRadioDefault6"> NO </label>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col">
								이메일마케팅 수신동의
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="email"
										id="emailmarketing"> <label class="form-check-label"
										for="flexRadioDefault5"> YES </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="email"
										id="emailmarketing" checked> <label class="form-check-label"
										for="flexRadioDefault6"> NO </label>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col">
								개인정보수집기간
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="save"
										id="save" checked> <label class="form-check-label"
										for="flexRadioDefault5">1년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="save"
										id="save"> <label class="form-check-label"
										for="flexRadioDefault6"> 2년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="save"
										id="save"> <label class="form-check-label"
										for="flexRadioDefault6"> 3년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="save"
										id="save"> <label class="form-check-label"
										for="flexRadioDefault6">5년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="save"
										id="save"> <label class="form-check-label"
										for="flexRadioDefault6">10년 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="save"
										id="save"> <label class="form-check-label"
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
						<button class="btn btn-primary btn-lg btn-block" type="submit">수정완료</button>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2022 Auctionary</p>
		</footer>
	</div>






	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	
		window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); 

	</script>

</body>
</html>
