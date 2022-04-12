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

<title>Main</title>
</head>

<body>

	<!-- 웹버전로고 -->
	<div class="d-none d-xl-block ">
		<a href="./productMainUser"> <img
			src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"
			class="rounded mx-auto d-block" alt="..." width="300px"
			height="150px"></a> <br> 
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
			<form class="d-flex">
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
				</select> 
				<input type="text" name="shProductValue" id="shProductValue">
				<button class="btn btn-outline-primary" type="submit" name="search"
					id="btnSearch">검색</button>
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
<!-- 				기본방식	<li><a class="dropdown-item"
								href="../product/productFormUser">상품등록</a></li> -->
							<li><a class="dropdown-item" href="javaScript:goProductForm()">상품등록</a></li>	
							<li><hr class="dropdown-divider"></li>
							<li><c:if test="${not empty sessSeq}"> <a class="dropdown-item" id="btnLogout">로그아웃</a></c:if> </li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

	
	<form class="" id="formList" name="formList" method="post" action="/infra/product/productMainUser">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>"> 
	<input type="hidden" id="acprSeq" name="acprSeq"> 
	</form>
	
	<br>

<!-- 네이버로그인결과 -->
<font id="name"></font> <!-- (로그인 유저 이름 넣을곳에 사용) -->

<script type="text/javascript">
  $(document).ready(function() {
	    var name = ${result}.response.nickname;
	    $("#name").html(name); //font 부분 텍스트 바꾸는 코드
	    });
	  //location.href = "${pageContext.request.contextPath}/";
</script>
    

	<div class="dropdown">
		<button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown"
			aria-expanded="false">정렬 순</button>
		<ul class="dropdown-menu dropdown-menu-light"
			aria-labelledby="dropdownMenuButton2">
			<li><a class="dropdown-item active" href="#">마감임박순</a></li>
			<li><a class="dropdown-item" href="#">최저가순</a></li>
			<li><a class="dropdown-item" href="#">최고가순</a></li>
			<li><hr class="dropdown-divider"></li>
			<li><a class="dropdown-item" href="#">전체매물보기</a></li>
		</ul>
	</div>
	
			<div class="form-check form-check-inline" style="float:right">
			<input type="hidden" id="shAcprStatusCd" name="shAcprStatusCd" value="55">
			<input class="form-check-input" type="checkbox" value="55" id="shAcprStatusCd" name="shAcprStatusCd"> <label class="form-check-label"
				<c:if test="${vo.shAcprStatusCd eq 55 }"> selected </c:if>> 경매완료상품 보이지않기</label>
		</div>
	<br>
	<br>
	<!--   <div class="d-none d-xl-block "> 모바일버전감춤 -->

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
							<article>	
										<svg class="bd-placeholder-img card-img-top" width="100%"
										height="225" xmlns="http://www.w3.org/2000/svg" role="img"
										aria-label="Placeholder: Thumbnail"
										preserveAspectRatio="xMidYMid slice" focusable="false">
										<title>Placeholder</title><rect width="100%" height="100%"
											fill="#55595c" />
										<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>


								<%-- 	겟방식	<div class="card-body" id="">
										<a 	href="/infra/product/productViewUser?acprSeq=<c:out value="${item.acprSeq}"/>">
										<p class="card-text"><c:out value="${item.acprProductName}" />
										</p></a> --%>
										
										<div class="card-body" id="">
										<a href="javaScript:goProductView('<c:out value="${item.acprSeq}"/>')">
										<p class="card-text"><c:out value="${item.acprProductName}" /></p></a>
										
										<div class="d-flex justify-content-between align-items-center">
											<div class="btn-group">
											<c:out value="${item.ifmmPhoto}" /> 
											<c:out value="${item.ifmmNickname}" /> 
											<c:out value="${item.ifmmGrade}" />
								<!-- 				<button type="button"
													class="btn btn-sm btn-outline-secondary">View</button>
												<button type="button"
													class="btn btn-sm btn-outline-secondary">Edit</button> -->
											</div>
											<small class="text-muted">9 mins</small>
										</div>
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

	<br>
	<br>

			<nav aria-label="...">
				<ul class="pagination  justify-content-center">
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
						<li class="page-item"><a class="page-link" href="javascript:goProductList( <c:out value='${vo.startPage - 1}'/>);"> Previous</a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
								<li class="page-item active"><a class="page-link" href="javascript:goProductList(<c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link" href="javascript:goProductList( <c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${vo.endPage ne vo.totalPages}">
						<li class="page-item"><a class="page-link" href="javascript:goProductList( <c:out value='${vo.endPage + 1 }'/>);">Next</a></li>
					</c:if>
				</ul>
			</nav>


	<!-- 검색 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	<script type="text/javascript">
		$("#btnSubmit5").on(
				"click",
				function() {
					if (!checkNull($("#shProductOption"), $("#shProductOption")
							.val(), "검색구문을 선택 해 주세요!"))
						retrun
					false;
					if (!checkNull($("#shProductValue"), $("#shProductValue")
							.val(), "검색어를 입력 해 주세요!"))
						retrun
					false;
				});
	</script>

	<div class="d-none d-xl-block ">
		<!-- The Modal -->
		<div id="myModal" class="modal">
			<!-- Modal content -->
			<div class="modal-content">
				<p style="text-align: center;">
					<b><span style="font-size: 20pt;"> HOT TODAY</span></b> <br> <span
						style="font-size: 14pt;"> 현재 최다누적ㅇㅇ건</span>
				</p>
				<p style="text-align: center; line-height: 1.5;">
					<br /> <a href=""><img
						src="${pageContext.request.contextPath}/resources/xdmin/images/shoes.png"
						class="d-block w-100" alt="..."> </a>
				</p>
				<p>
					<br />
				</p>
				<div style="text-align: center; text-color: white;"
					onClick="close_pop();">
					<span class="pop_bt" style="font-size: 13pt;"> <a href="">
							<button type="button" class="btn btn-primary">바로가기</button>
					</a>
					</span> <span class="pop_bt" style="font-size: 13pt;">
						<button type="button" class="btn btn-secondary">닫기</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	<!--End Modal-->



	<br>
	<br>
	<br>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/common/js/validation.js"></script>

	<!-- jquery ui -->
	<script
		src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"> </script>
		
	<!-- 카카오톡로그인 리다이렉트 -->
	<script type="text/javascript">
	  Kakao.init("b6917d9a0f917a910b27b8ae0c84814b"); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
		//카카오로그인 1방식
		KakaoLogin = function(){ 
		//리다이렉트 된 후 토큰값을 이용하여 사용자 정보를 받을 코드
		Kakao.Auth.login({ 
			success : function(authObj) {		
				console.log(authObj);

				Kakao.API.request({
					url : '/v2/user/me',
					success : function(res) {

						console.log(res);
						console.log(res.id);
						console.log(res.kakao_account.email);
						console.log(res.properties.nickname);
					}
				})
			}
		});
	}


</script>
		
		
		
	<!-- 네이버로그인 콜백 -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
 	 var naver_id_login = new naver_id_login("mija45", "http://localhost:8080/infra/product/productMainUser2");
 	 // 접근 토큰 값 출력
 	 alert(naver_id_login.oauthParams.access_token);
 	 // 네이버 사용자 프로필 조회
 	 naver_id_login.get_naver_userprofile("naverSignInCallback()");
 	 // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
 	 function naverSignInCallback() {
    alert(naver_id_login.getProfileData('email'));
    alert(naver_id_login.getProfileData('nickname'));
    alert(naver_id_login.getProfileData('age'));
  }
</script>


<script>

  function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
    console.log('statusChangeCallback');
    console.log(response);                   // The current login status of the person.
    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
      testAPI();  
    } else {                                 // Not logged into your webpage or we are unable to tell.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this webpage.';
    }
  }


  function checkLoginState() {               // Called when a person is finished with the Login Button.
    FB.getLoginStatus(function(response) {   // See the onlogin handler
      statusChangeCallback(response);
    });
  }


  window.fbAsyncInit = function() {
    FB.init({
      appId      : '359675522870832 ',    // app_Id 입력
      cookie     : true,                     // Enable cookies to allow the server to access the session.
      xfbml      : true,                     // Parse social plugins on this webpage.
      version    : 'v13.0'           // Use this Graph API version for this call.
    });


    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
      statusChangeCallback(response);        // Returns the login status.
    });
  };
 
  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
  }

</script>
	
	
	<script type="text/javascript">
		jQuery(document).ready(function() {
			$('#myModal').show();
		});
		//팝업 Close 기능
		function close_pop(flag) {
			$('#myModal').hide();
		};
	</script>

	<script type="text/javascript">
		$("#btnLogout")
				.on(
						"click",
						function() {
							/* if(validation() == false) return false; */
							$
									.ajax({
										async : true,
										cache : false,
										type : "post",
										url : "/infra/member/logoutProc",
										data : {
											"ifmmId" : $("#ifmmId").val(),
											"ifmmPassword" : $("#ifmmPassword")
													.val()
										},
										success : function(response) {
											if (response.rt == "success") {
												location.href = "/infra/product/productMainUser";
												alert("정말 로그아웃 하시겠습니까? ")
											}
										},
										error : function(jqXHR, textStatus,
												errorThrown) {
											alert("ajaxUpdate "
													+ jqXHR.textStatus + " : "
													+ jqXHR.errorThrown);
										}
									});
						});
	</script>


	<script type="text/javascript">
		var seq = $("input:hidden[name=acprSeq]");
		
	 	goProductList = function(seq){
			alert(seq);
					$("#thisPage").val(seq);
					$("#formList").submit();
			}
	 	
	 	goProductView = function(seq){
			alert(seq);
					$("#thisPage").val(seq);
					$("#formList").attr("action","/infra/product/prouductViewUser");
					$("#formList").submit();
			} 
		 goProductForm = function(seq){
				$("#formList").attr("action","/infra/product/productFormUser");
				$("#formList").submit();
			}	
		</script>
		
				<script type="text/javascript">
		$("#btnSearch").on( 
				"click", function() {
				if (!checkNull($("#shProductOption"), $("#shProductOption").val(),"검색구문을 선택해 주세요!")) 
					return
					false;
				if (!checkNull($("#shProductValue"), $("#shProductValue").val(),"검색어를 입력 해 주세요!"))
					retrun
				false;
			});
			</script>
		
</body>
</html>