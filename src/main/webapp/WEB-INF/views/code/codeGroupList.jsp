<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<form id="" name="" method="get" action="/infra/code/codeGroupList">

	<select name="shIfcgDelNy">
		<option value="">::삭제여부::
		<option value="1">Y
		<option value="0">N
	</select>
	<!--|| 코드그룹명 : <input type="text" name="shIfcgName"> || -->
	<select name="shOption">
		<option value="">::검색구문::
		<option value="1">한글
		<option value="2">영문
	</select> <input type="text" name="shValue"> <input type="submit"
		name="search">
	<!-- <input type="reset" name="reset"> -->
	<br>

	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">
				<c:out value="${item.ifcgSeq}" /> |
		<a
					href="/infra/code/codeGroupView?ifcgSeq=<c:out value="${item.ifcgSeq}"/>">
					<c:out value="${item.ifcgName}" />
				</a>
		 	|  <c:out value="${item.ifcgDelNy}" /> |  <c:out
					value="${item.ifcgNameEng}" />
				<br>
			</c:forEach>
		</c:otherwise>
	</c:choose>

</form>