<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<title>코드그룹수정</title>
<form id="form" method="post" action="/infra/code/codeGroupUpdt">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="hidden" name="">
	
	<input type="hidden" name="ifcgSeq" value="<c:out value="${item.ifcgSeq}"/>">
	<input type="text"   name="ifcgName" id="ifcgName" placeholder="코드그룹" value="<c:out value="${item.ifcgName}"/>">
	<input type="submit" id="btnSubmit"  value="제출">
</form>


<a href="/infra/code/codeGroupList?thisPage=${vo.thisPage}&shOption=<c:out value=
"${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"> 목록</a>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">

$("#btnSubmit").on("click",function() {
	if (!checkNull($("#ifcgName"), $("#ifcgName").val(),"코드그룹이름을 입력해 주세요!"))	retrun	false;
</script>


