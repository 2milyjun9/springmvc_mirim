<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<title>코드뷰</title>

<c:out value="${item.ifcdSeq}"/> | <c:out value="${item.ifcdName}"/> | <c:out value="${item.ifcdDelNy}"/> <br>


<a href="/infra/code/codeList?shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"> 목록</a>

<a href="/infra/code/codeForm?ifcdSeq=<c:out value="${item.ifcdSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>
&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>" id="btnDeleteCode" > 추가</a>

<a href="/infra/code/codeForm2?ifcdSeq=<c:out value="${item.ifcdSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>
&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>" id="btnUpdateDeleteCode" > 수정</a>


<a href="/infra/code/codeDele?ifcdSeq=<c:out value="${item.ifcdSeq}"/>
&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>
" id="btnDelete" > 삭제(진짜)</a>

<a href="/infra/code/codeNele?ifcdSeq=<c:out value="${item.ifcdSeq}"/>
&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>
" id="btnUpdateDelete" >삭제(가짜)</a>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">

$("#btnDelete").on( "click", function() {
	var answer = confirm ("삭제하시겠습니까?");
			if(answer) { //infra/code/codeGroupDele 이동 
			}else{
				return false ;
			}
		});
		
$("#btnUpdateDelete").on( "click", function() {
	var answer = confirm ("삭제하시겠습니까?");
			if(answer) { //infra/code/codeGroupNele 이동 
			}else{
				return false ;
			}
		});
</script>