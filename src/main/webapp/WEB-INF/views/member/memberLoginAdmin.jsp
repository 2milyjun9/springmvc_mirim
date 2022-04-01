
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
}

body {
	width: 80%;
	float: none;
	margin: 0 auto;
}

a { /*링크 줄안가게하기*/
	text-decoration: none;
}

#weblogin { /* 웹용로그인창 */
	width : 30%;
	float: none;
	border-width: 1px;
	margin: 20px;
	margin-left : auto;
	margin-right : auto;
	padding: 25px;
	border-radius: 20px;
	font-size: 15px;
	border: solid;
	border-color: rgb(0, 128, 192);
}

#mobilelogin { /* 모바일용로그인창 */
	width : 80%;
	border-width: 1px;
	margin: 10px;
	margin-left : auto;
	margin-right : auto;
	padding: 10px;
	border-radius: 20px;
	font-size: 15px;
	border: solid;
	border-color: rgb(0, 128, 192);
}
</style>

<title>관리자로그인</title>
</head>

<!--  <body style="background-image: url(../../../images/xdmin/bg_sky.png);  background-size: cover; ">
-->

<body>

						<a href="../main.jsp"> 
					<img src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"  class="rounded mx-auto d-block" alt="..." width="200px"
						height="100px"></a> 
	<br><br>
	<!-- 웹버전 로그인창 -->
	<div class="d-none d-xl-block ">
		<div id=weblogin>
			<form class="px-4 py-3">
				<div class="mb-3">
					<label for="exampleDropdownFormEmail1" class="form-label">아이디</label>
					<input type="text" class="form-control"
						id="ifmmId" placeholder="사원번호">
				</div>
				<div class="mb-3">
					<label for="exampleDropdownFormPassword1" class="form-label">패스워드</label>
					<input type="password" class="form-control" id="ifmmPassword" placeholder="비밀번호">
				</div>
				<div class="mb-3">
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="dropdownCheck">
						<label class="form-check-label" for="dropdownCheck"> 아이디저장
						</label>
					</div>
				</div>
				<button type="button" id="btnLogin" class="btn btn-primary">로그인</button>
			</form>
		</div>
	</div>

	<br>
	<br>


	<!-- 모바일버전로그인창 -->
<!-- 	<div class="  d-lg-block d-xl-none">
		<div id=mobilelogin>
			<form class="px-4 py-3">
				<div class="mb-3">
					<label for="exampleDropdownFormEmail1" class="form-label">아이디</label>
					<input type="email" class="form-control"
						id="exampleDropdownFormEmail1" placeholder="사원번호">
				</div>
				<div class="mb-3">
					<label for="exampleDropdownFormPassword1" class="form-label">패스워드</label>
					<input type="password" class="form-control"
						id="exampleDropdownFormPassword1" placeholder="비밀번호">
				</div>
				<div class="mb-3">
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="dropdownCheck">
						<label class="form-check-label" for="dropdownCheck"> 아이디저장
						</label>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">로그인</button>
			</form>
		</div>
	</div>
 -->
	<br>
	<br>
	<br>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/infra/resources/common/js/validation.js"></script>
			
			<!-- jquery ui -->
		<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
			
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	</script>

	<script type="text/javascript">
	$("#btnLogin").on("click", function(){
		/* if(validation() == false) return false; */
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/infra/member/loginProc"
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/infra/index/indexView";
				} else {
					alert("아이디 또는 비밀번호가 맞지 않습니다.");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});	
	});
	</script>

</body>
</html>