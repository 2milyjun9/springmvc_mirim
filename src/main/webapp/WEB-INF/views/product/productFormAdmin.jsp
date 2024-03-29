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
<title>상품등록</title>



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
	max-width: 680px;
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
	<form method="post" action="/infra/product/productInstAdmin">

		<!-- 기본값히든처리 -->
		<input type="hidden" id="shAcprDelNy" name="shAcprDelNy" value="<c:out value="${vo.shAcprDelNy}"/>">
		<input type="hidden" id="shProductOption" name="shProductOption" value="<c:out value="${vo.shProductOption}"/>">
		<input type="hidden" id="shProductValue" name="shProductValue" value="<c:out value="${vo.shProductValue}"/>">			
		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>"> 
		<input type="hidden" id="ifmmSeq" name="ifmmSeq"> 
		
		
		
		<div class="container">
			<div class="input-form col-md-9 mx-auto">
				<h3 align="center">상품등록</h3>
				
				<br>
				
			<form class="row gx-3 gy-2 align-items-center">
				<div class="row">
					<div class="col-md-12 mb-3">

					<%-- 		<c:forEach items="${list}" var="item" varStatus="status">
							<option value="${item.ifmmSeq}"> <c:out value="${item.ifmmName}" /></option>
		
						<select name="shMemberOption" id="shMemberOption"> <option value="">구분
						<option value="<c:out value="${item.ifmmSeq}"/>"
					<c:if test="${param.shIfmmSeq eq item.ifmmSeq}"> selected</c:if>> 이름
					<c:out value="${item.ifmmName}" />
							<option value="<c:out value="${item.ifmmSeq}"/>"
					<c:if test="${param.shIfmmSeq eq item.ifmmSeq}"> selected</c:if>> 아이디
					<c:out value="${item.ifmmId}" />
							<option value="<c:out value="${item.ifmmSeq}"/>"
					<c:if test="${param.shIfmmSeq eq item.ifmmSeq}"> selected</c:if>> 닉네임
					<c:out value="${item.ifmmNickname}" /> 
							<option value="1"
								<c:if test="${vo.shMemberOption eq 1 }"> selected</c:if>>이름
							<option value="2"
								<c:if test="${vo.shMemberOption eq 2 }"> selected</c:if>>아이디
							<option value="3"
								<c:if test="${vo.shMemberOption eq 3 }"> selected</c:if>>닉네임
						</select>
						</c:forEach> --%>
						
			<div class="row">
				<div class="col-md-3 mb-3">
						<select class="form-select form-select" name="shMemberOption" id="shMemberOption" style="width:150px">
							<option value="">::검색구문::
						
							<option value="1" <c:if test="${vo.shMemberOption eq 1 }"> selected</c:if>>이름
							<option value="2" <c:if test="${vo.shMemberOption eq 2 }"> selected</c:if>>아이디
							<option value="3" <c:if test="${vo.shMemberOption eq 3 }"> selected</c:if>>닉네임
<%-- 							<option value="4" <c:if test="${vo.shMemberOption eq 4 }"> selected</c:if>>연락처 --%>
						</select> 
				</div> 
	
				<div class="col-md-6 mb-3">	
					<input  class="form-control form-control" type="text" name="shMemberValue" id="shMemberValue" 
					placeholder="판매자검색 클릭"  style="width:200px"  value=""  required>
				</div>
 				<div class="col-md-3 mb-3">
					<button class="btn btn-secondary" type="submit" name="search" id="" onclick="showPopup();">검색</button> 
				</div> 
			</div>
			
		</div>
	</form>			
					 <hr>
		
	
				<div class="row">
					<div class="col-md-6 mb-3">
						<select class="form-select form-select" name="infrCategory" style="width: 200px" required>
							<option value="">대분류</option>
						</select> 
					</div>
					<div class="col-md-6 mb-3">
						<select class="form-select form-select" name="subCategory" style="width: 200px" >
							<option value=""> 중분류 </option>
						</select> 
					</div>
				</div>
						<br> 
				<div class="row">
					<div class="col-md-12 mb-3">
						<select class="form-select form-select" name="acprPickupCd" id="acprPickupCd" required>
							<option value="">거래방식
							<option value="1"
								<c:if test="${vo.acprPickupCd eq 51}"> selected</c:if>>직거래
							<option value="2"
								<c:if test="${vo.acprPickupCd eq 52 }"> selected</c:if>>
								택배거래
							<option value="3"
								<c:if test="${vo.acprPickupCd eq 53 }"> selected</c:if>>퀵거래
							<option value="4"
								<c:if test="${vo.acprPickupCd eq 54 }"> selected</c:if>>협의
						</select>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12 mb-3">
						<input class="form-control" type="text" name="acprProductName" placeholder="상품제목" required> 
						<br> 
						<input class="form-control" type="text" name="acprDetails" placeholder="상품내용"
						value="<c:out value="${item.acprDetails}"/>" required>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 mb-3">
						<input class="form-control" type="text" id="acprPriceStart" name="acprPriceStart" placeholder="최소가격" required> <br> 
							
						<input class="form-control" type="text" id="acprEndDate" name="acprEndDate" autocomplete="off" 
						value="<c:out value="${item.acprEndDate}"/>" required>
						
					
					</div>
				</div>
		
				<div class="row">
					<div class="col-md-12 mb-3">
						<input type="file" class="form-control" id="acimFile?"> <label
							class="input-group-text" for="">Upload</label>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 mb-3">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id="aggrement1"
								required> <label class="custom-control-label"
								for="aggrement1">개인정보 수집 및 이용에 동의합니다. </label>
						</div>

						</div>
						<br>
										<div class="col-md-12 mb-3">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" id="aggrement2"
								required> <label class="custom-control-label"
								for="aggrement2"> 진행 약관에 동의합니다. </label>
						</div>
						</div>
					</div>

				<div class="row">
					<div class="col-md-12 mb-3">
						<button class="btn btn-primary btn-sm btn-block" type="submit"
							id="btnSubmit">등록 완료</button>
						<input type="hidden" name="thisPage"
							value="<c:out value="${vo.thisPage}"/>"> <input
							type="hidden" name="shMemberOption"
							value="<c:out value="${vo.shMemberOption}"/>"> <input
							type="hidden" name="shMemberValue"
							value="<c:out value="${vo.shMemberValue}"/>"> <input
							type="hidden" name="">
					</div>
				</div>
				
			</div>
		</div>


	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							//Main 카테고리를 선택 할때 마다 AJAX를 호출할 수 있지만 DB접속을 매번 해야 하기 때문에 main, sub카테고리 전체을 들고온다.

							//****************이부분은 DB로 셋팅하세요.
							//Main 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
							var mainCategoryArray = new Array();
							var mainCategoryObject = new Object();

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "1";
							mainCategoryObject.main_category_name = "패션/잡화";
							mainCategoryArray.push(mainCategoryObject);

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "2";
							mainCategoryObject.main_category_name = "뷰티";
							mainCategoryArray.push(mainCategoryObject);

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "3";
							mainCategoryObject.main_category_name = "생활/식품";
							mainCategoryArray.push(mainCategoryObject);

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "4";
							mainCategoryObject.main_category_name = "식물";
							mainCategoryArray.push(mainCategoryObject);

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "5";
							mainCategoryObject.main_category_name = "스포츠/레저";
							mainCategoryArray.push(mainCategoryObject);

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "6";
							mainCategoryObject.main_category_name = "도서/음반/악기";
							mainCategoryArray.push(mainCategoryObject);

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "7";
							mainCategoryObject.main_category_name = "가구/인테리어";
							mainCategoryArray.push(mainCategoryObject);

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "8";
							mainCategoryObject.main_category_name = "생활/건강";
							mainCategoryArray.push(mainCategoryObject);

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "6";
							mainCategoryObject.main_category_name = "가전/디지털기기";
							mainCategoryArray.push(mainCategoryObject);

							mainCategoryObject = new Object();
							mainCategoryObject.main_category_id = "7";
							mainCategoryObject.main_category_name = "중고차";
							mainCategoryArray.push(mainCategoryObject);
							//Sub 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
							var subCategoryArray = new Array();
							var subCategoryObject = new Object();

							//스포츠에 해당하는 sub category 리스트
							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "1";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "의류"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "1";
							subCategoryObject.sub_category_id = "2"
							subCategoryObject.sub_category_name = "신발"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "1";
							subCategoryObject.sub_category_id = "3"
							subCategoryObject.sub_category_name = "가방"
							subCategoryArray.push(subCategoryObject);

							//공연에 해당하는 sub category 리스트
							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "3";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "신선"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "3";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "가공"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "5";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "스포츠"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "5";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "레저"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "6";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "도서"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "6";
							subCategoryObject.sub_category_id = "2"
							subCategoryObject.sub_category_name = "음반"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "6";
							subCategoryObject.sub_category_id = "2"
							subCategoryObject.sub_category_name = "악기"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "7";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "가구"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "7";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "인테리어"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "8";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "생필품"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "8";
							subCategoryObject.sub_category_id = "2"
							subCategoryObject.sub_category_name = "건강"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "9";
							subCategoryObject.sub_category_id = "1"
							subCategoryObject.sub_category_name = "가전"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "9";
							subCategoryObject.sub_category_id = "2"
							subCategoryObject.sub_category_name = "컴퓨터"
							subCategoryArray.push(subCategoryObject);

							subCategoryObject = new Object();
							subCategoryObject.main_category_id = "9";
							subCategoryObject.sub_category_id = "3"
							subCategoryObject.sub_category_name = "그외디지털"
							subCategoryArray.push(subCategoryObject);

							//****************이부분은 DB로 셋팅하세요.

							//메인 카테고리 셋팅
							var mainCategorySelectBox = $("select[name='infrCategory']");

							for (var i = 0; i < mainCategoryArray.length; i++) {
								mainCategorySelectBox
										.append("<option value='"+mainCategoryArray[i].main_category_id+"'>"
												+ mainCategoryArray[i].main_category_name
												+ "</option>");
							}

							//*********** 1depth카테고리 선택 후 2depth 생성 START ***********
							$(document)
									.on(
											"change",
											"select[name='infrCategory']",
											function() {

												//두번째 셀렉트 박스를 삭제 시킨다.
												var subCategorySelectBox = $("select[name='subCategory']");
												subCategorySelectBox.children()
														.remove(); //기존 리스트 삭제

												//선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
												$("option:selected", this)
														.each(
																function() {
																	var selectValue = $(
																			this)
																			.val(); //main category 에서 선택한 값
																	subCategorySelectBox
																			.append("<option value=''>전체</option>");
																	for (var i = 0; i < subCategoryArray.length; i++) {
																		if (selectValue == subCategoryArray[i].main_category_id) {

																			subCategorySelectBox
																					.append("<option value='"+subCategoryArray[i].sub_category_id+"'>"
																							+ subCategoryArray[i].sub_category_name
																							+ "</option>");

																		}
																	}
																});

											});
							//*********** 1depth카테고리 선택 후 2depth 생성 END ***********

						}); 
		</script>
							


		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/infra/resources/common/js/validation.js"></script>
			
			<!-- jquery ui -->
		<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
			
			
			
		<!-- 팝업 -->
		<script language="javascript"> function showPopup() { window.open("../member/memberSearch", "회원검색", "width=800, height=900, left=100, top=50"); }
 		</script>
			

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
</body>
</html>

