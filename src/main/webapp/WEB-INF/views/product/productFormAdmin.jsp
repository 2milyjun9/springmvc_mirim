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
<title>Auctionary 상품간단등록</title>


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
	<h3 align="center">상품등록</h3>
	<form method="post" action="/infra/product/productInstAdmin">

		<div class="container">
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">

				<div class="row">
						<div class="col-md-6 mb-3">
							<input type="text" name="acprCategory" placeholder="카테고리"> 
					
  1depth: <select name="mainCategory" style="width:200px">
        <option value="">전체</option>
    </select>
    2depth: <select name="subCategory" style="width:200px">
        <option value="">전체</option>
    </select>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-6 mb-3">
							<input type="text" name="acprProductName" placeholder="상품제목"> 
							<input
								type="text" name="" placeholder="">
						</div>
					</div>
								<div class="row">
						<div class="col-md-6 mb-3">
						<input
								type="text" name="" placeholder=""> 
							<input type="text" name="" placeholder="">  
							<br>
						</div>
					</div>
							<div class="row">
						<div class="col-md-6 mb-3">
						
										
					<select name="ifmmGenderCd">
								<option value=""> 성별</option>
								<option value="3"> 남성 </option>
								<option value="4"> 여성 </option>
							</select> 

							<input type="text" id="ifmmDob" name="ifmmDob" placeholder="생년월일 1991-09-07"
							value="<c:out value="${item.ifmmDob }"/>">  
							<br>
						</div>
					</div>
		
					<div class="row">
						<div class="col-md-6 mb-3">
							<select  id="ifmpTelecomCd" name="ifmpTelecomCd">
								<option value="">통신사</option>
								<option value="28">SKT</option>
								<option value="29">KT</option>
								<option value="30">LGU</option>
								<option value="31">기타</option>
								</select>
								 <input type="text" name="ifmpNumber" placeholder="연락처">
						</div>
					</div>
					<button class="btn btn-primary btn-sm btn-block" type="submit">가입
						완료</button>
				</div>
			</div>
		</div>
	</form>



  1depth: <select name="mainCategory" style="width:200px">
        <option value="">전체</option>
    </select>
    2depth: <select name="subCategory" style="width:200px">
        <option value="">전체</option>
    </select>
 
<script type="text/javascript">
 
$(document).ready(function() {
    
    //Main 카테고리를 선택 할때 마다 AJAX를 호출할 수 있지만 DB접속을 매번 해야 하기 때문에 main, sub카테고리 전체을 들고온다.
    
    //****************이부분은 DB로 셋팅하세요.
    //Main 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
    var mainCategoryArray = new Array();
    var mainCategoryObject = new Object();
    
    mainCategoryObject = new Object();
    mainCategoryObject.main_category_id = "1";
    mainCategoryObject.main_category_name = "스포츠";
    mainCategoryArray.push(mainCategoryObject);
    
    mainCategoryObject = new Object();
    mainCategoryObject.main_category_id = "2";
    mainCategoryObject.main_category_name = "공연";
    mainCategoryArray.push(mainCategoryObject);
    
    //Sub 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
    var subCategoryArray = new Array();
    var subCategoryObject = new Object();
    
    //스포츠에 해당하는 sub category 리스트
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "1";
    subCategoryObject.sub_category_id = "1"
    subCategoryObject.sub_category_name = "야구"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "1";
    subCategoryObject.sub_category_id = "2"
    subCategoryObject.sub_category_name = "농구"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "1";
    subCategoryObject.sub_category_id = "3"
    subCategoryObject.sub_category_name = "축구"    
    subCategoryArray.push(subCategoryObject);
    
    //공연에 해당하는 sub category 리스트
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "2";
    subCategoryObject.sub_category_id = "1"
    subCategoryObject.sub_category_name = "연극"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "2";
    subCategoryObject.sub_category_id = "2"
    subCategoryObject.sub_category_name = "뮤지컬"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "2";
    subCategoryObject.sub_category_id = "3"
    subCategoryObject.sub_category_name = "오페라"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "2";
    subCategoryObject.sub_category_id = "4"
    subCategoryObject.sub_category_name = "콘서트"    
    subCategoryArray.push(subCategoryObject);
    //****************이부분은 DB로 셋팅하세요.
    
    
    //메인 카테고리 셋팅
    var mainCategorySelectBox = $("select[name='mainCategory']");
    
    for(var i=0;i<mainCategoryArray.length;i++){
        mainCategorySelectBox.append("<option value='"+mainCategoryArray[i].main_category_id+"'>"+mainCategoryArray[i].main_category_name+"</option>");
    }
    
    //*********** 1depth카테고리 선택 후 2depth 생성 START ***********
    $(document).on("change","select[name='mainCategory']",function(){
        
        //두번째 셀렉트 박스를 삭제 시킨다.
        var subCategorySelectBox = $("select[name='subCategory']");
        subCategorySelectBox.children().remove(); //기존 리스트 삭제
        
        //선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
        $("option:selected", this).each(function(){
            var selectValue = $(this).val(); //main category 에서 선택한 값
            subCategorySelectBox.append("<option value=''>전체</option>");
            for(var i=0;i<subCategoryArray.length;i++){
                if(selectValue == subCategoryArray[i].main_category_id){
                    
                    subCategorySelectBox.append("<option value='"+subCategoryArray[i].sub_category_id+"'>"+subCategoryArray[i].sub_category_name+"</option>");
                    
                }
            }
        });
        
    });
    //*********** 1depth카테고리 선택 후 2depth 생성 END ***********
        
});
</script>

	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 2022 Auctionary</p>
	</footer>


</body>
</html>

