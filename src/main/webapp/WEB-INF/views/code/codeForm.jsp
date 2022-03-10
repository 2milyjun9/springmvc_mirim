<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<form method="post" action="/infra/code/codeInst">


 <select name="ifcgSeq">
	<c:forEach items="${list}" var="rt" varStatus="status">	
		<option value ="${rt.ifcgSeq}">
	 <c:out value="${rt.ifcgName}"/></option>
		</c:forEach>
</select> 

 
<!-- <select name="ifcgName">
 <option> 권한회원.역할</option>
 <option> 회원.성별</option>
 <option> 회원.보존기간</option>
 <option> 회원.결혼여부</option>
 <option> 회원이메일.구분</option>
 <option> 회원이메일.도메인</option>
 <option> 회원전화.구분</option>
 <option> 회원전화.장비</option>
 <option> 회원전화.통신사</option>
 <option> 회원주소온라인.구분</option>
 <option> 회원주소온라인.SNS</option>
 <option> 회원취미.구분</option>
 <option> 회원보안질문구분</option>
 <option> 경매.거래방식</option>
 <option> 경매.상태</option>
 <option> 경매.리뷰</option>
 <option> 경매.성공실패</option>
 <option> 경매.할인</option>
 <option> 미림테스트0308</option>
</select> -->


	<input type="text" name="ifcdName" placeholder="코드추가" 
	value="<c:out value="${rt.ifcdName}"/>">
	<input type="submit" value="제출">
</form>

