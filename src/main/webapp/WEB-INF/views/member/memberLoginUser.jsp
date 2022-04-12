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
a { /*링크 줄안가게하기*/
	text-decoration: none;
}

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
	max-width: 500px;
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

<title>사용자로그인</title>
</head>
<body>

<form id="formList" name="formList" method="post" action="">
</form>

	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<a href="../main/mainUser">
				<img src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"
					class="rounded mx-auto d-block" alt="..." width="200px"
					height="100px"></a> <br> <br>
				<form class="validation-form" novalidate>
					<div class="mb-3">
						<label for="exampleDropdownFormEmail1" class="form-label">아이디</label>
						<input type="text" class="form-control" id="ifmmId" placeholder="">
					</div>
					<div class="mb-3">
						<label for="exampleDropdownFormPassword1" class="form-label">패스워드</label>
						<input type="password" class="form-control" id="ifmmPassword" placeholder="영문/숫자/특수문자포함 8자이상">
					</div>
					<div class="mb-3">
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="dropdownCheck"> <label class="form-check-label"
								for="dropdownCheck"> 아이디저장 </label>
						</div>
					</div>
					<div class="row text-center" style="width: 100%">
						<div style="width: 100%; float: none; margin: 0 auto">

						<button class="btn btn-primary" type="button" id="btnLogin" name=""  value="">로그인</button>
						</div>
					</div>
					<br> 
					<div class="mb-3">
					
					<a href="javascript:kakaoLogin();">  
					<button class="btn btn-warning btn-lg btn-block" type="submit">Kakao 로그인</button></a>
					
					<div id="kakao-login-btn">
					<button class="btn btn-warning btn-lg btn-block" type="submit">Kakao 로그인</button> </div> 
					<br>
					
					<button class="btn btn-success btn-lg btn-block" type="submit">Naver 로그인</button>
						
						
						<!-- 네이버 로그인 버튼 노출 영역 -->
 		          <div id="naver_id_login"></div> 
<div style="text-align:center"><a href="${url}">NaverIdLogin</a></div>
	
	<!-- The JS SDK Login Button 페이스북-->
<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>
<div id="status">
</div>

			<!-- 페이스북 로그인 버튼 노출 영역 -->
						<div class="fb-login-button" data-width="" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="true" data-use-continue-as="false"></div>		


						
						<button class="btn btn-facebook" type="button" id="btn-facebook" onclick="fnFbCustomLogin();"><img src="/resources/xdmin/image/fbicon.png" id="icon"><b> 페이스북</b> 로그인</button>
						
					<button class="btn btn-primary btn-lg btn-block" type="submit">Facebook 로그인</button>
				
					</div>
					<br> <br>
					
					<div class="row text-right" style="width: 100%">
						<div style="width: 100%; float: none; margin: 0 auto">
							<a href="memberFormUser"> 회원가입 </a> <br> <a
								href="../Product/ProductMainUser"> 상품 먼저 둘러보기 </a> <br> <a
								href="..."> 아이디/비밀번호찾기 </a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
			<!-- 아작스 -->
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
			<!-- 밸리데이션연결-->
		<script src="/infra/resources/common/js/validation.js"></script>
			<!-- jquery ui -->
 		<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>  
	
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"> </script>
	
	
			<!-- 카카오로그인 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	
	<!-- 		카카오로그인 1방식 -->
<!--   	<script type="text/javascript">
	  Kakao.init("b6917d9a0f917a910b27b8ae0c84814b"); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단


	KakaoLogin = function(){     // 버튼에 링크를 걸었던 자바스크립트 함수.
		
		Kakao.Auth.authorize({   //사용자가 앱에 로그인할 수 있도록 인가 코드를 요청
			redirectUri: 'http://localhost:8080/infra/product/productMainUser2'
			//kakao developers 페이지에서 설정했던 redirectUri를 그대로 작성해줍니다.
			//이렇게 하면 로그인 성공시 해당 주소로 redirect 됩니다.
		});
		
	} 

</script> -->

	<!-- <2방식> -->
<!-- -  	<script type="text/javascript">
	  Kakao.init("b6917d9a0f917a910b27b8ae0c84814b"); //발급받은 키 중 javascript키를 사용해준다.
		console.log(Kakao.isInitialized()); // sdk초기화여부판단
		//카카오로그인
		
		KakaoLogin = function(){
		Kakao.Auth.login({  // Kakao.Auth.loginForm도 사용가능 (login은 카카오 로그인 세션이 존재하는 경우 로그인 팝업을 띄우지 않음)
			 success : function(authObj) {
					 console.log(authObj);
				 
				 Kakao.API.request({
					 url:'/v2/user/me',
					 success: function(res){
						 console.log(res);
					 }
				 })
			 }
		 })
	};
	</script> -->  

	 
	 
	<!-- <3방식> -->
 <script type="text/javascript">

	Kakao.init('b6917d9a0f917a910b27b8ae0c84814b');
	console.log(Kakao.isInitialized());
	
	Kakao.Auth.createLoginButton({
		container: '#kakao-login-btn',
		success: function(authObj) {
			console.log(authObj);
			
			Kakao.API.request({
				url:'/v2/user/me',
				success: function(res){
					console.log(res);
		
				}
			});
		}
	});
</script>  

<!-- 도현님소스 -->

<script>
window.Kakao.init('b6917d9a0f917a910b27b8ae0c84814b');	// 자바스크립트 키 입력
console.log(Kakao.isInitialized()); 
function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'profile_nickname', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
        success: function(response) {
            console.log(response) // 로그인 성공하면 받아오는 데이터
            window.Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (res) => {
                    const kakao_account = res.kakao_account; 
                    const profile_nickname = res.properties.nickname; 
                    console.log(kakao_account)		// 받아온 정보들을 출력
                    console.log(profile_nickname)		// 받아온 정보들을 출력
                    $.ajax({
            			async: true 
            			,cache: false
            			,type: "post"
            			,url: "/member/KakaoLgProc"
            			,data : {"ifmmName" : profile_nickname}
            			,success: function(response) {
            				if(response.item == "success") {
            					location.href = "/product/productMainUser2";
            				} else {
            					alert("카카오 로그인 실패");
            				}
            			}
            			,error : function(jqXHR, textStatus, errorThrown){
            				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            			}
            		})
                }
            });
            // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
        },
        fail: function(error) {
            console.log(error);
        }
    });
}


</script>


<!-- 
<!-- 네이버로그인 -->
 <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script type="text/javascript">
  	var naver_id_login = new naver_id_login("mija45", "http://localhost:8080/infra/product/productMainUser2");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:8080/infra/member/memberLoginUser");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
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
					location.href = "/infra/product/productMainUser2";
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


 	<script type="text/javascript">
	$("#btnLogin").on(
			"click",
			function() {
				if (!checkId($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력 해 주세요!"))
			retrun
		false;	
			});
	</script>
	

<!-- 		$("#btnLogin").on("click", function(){
			if(validation() == false) return false;
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/loginProc"
				,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/product/productMainUser";
					} else {
						alert("회원정보가 없습니다.");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		</script> 
	

	validation = function(){
		if(!checkNull($("ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
		if(!checkNull($("ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
	}  -->




<!-- Load the JS SDK asynchronously  페이스북-->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<!-- <script>
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
</script> -->

<!-- 페이스북 2번방법 -->
<script>
//기존 로그인 상태를 가져오기 위해 Facebook에 대한 호출
function statusChangeCallback(res){
	statusChangeCallback(response);
}

function fnFbCustomLogin(){
	FB.login(function(response) {
		if (response.status === 'connected') {
			FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
				console.log(r);
			})
		} else if (response.status === 'not_authorized') {
			// 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
			alert('앱에 로그인해야 이용가능한 기능입니다.');
		} else {
			// 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
			alert('페이스북에 로그인해야 이용가능한 기능입니다.');
		}
	}, {scope: 'public_profile,email'});
}

window.fbAsyncInit = function() {
	FB.init({
		appId      : '359675522870832', // 내 앱 ID를 입력한다.
		cookie     : true,
		xfbml      : true,
		version    : 'v13.0'
	});
	FB.AppEvents.logPageView();   
};
</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=본인아이디" nonce="SiOBIhLG"></script>

</body>
</html>