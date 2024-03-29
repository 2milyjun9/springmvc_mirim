<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<title>코드리스트</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<form id="" name="" method="get" action="/infra/code/codeList">
	<select name="shIfcgSeq" id="shIfcgSeq">
		<option value="">::코드그룹::
			<c:forEach items="${listCodeGroup}" var="item" varStatus="status">
				<option value="<c:out value="${item.ifcgSeq}"/>"
					<c:if test="${param.shIfcgSeq eq item.ifcgSeq}"> selected</c:if>>
					<c:out value="${item.ifcgName}" />
				</option>
			</c:forEach>
	</select> <input type="text" name="shValue" id="shValue" placeholder="코드검색"
		value="<c:out value="${vo.shValue}"/> "> 
		<input type="submit" name="search" id="btnSubmit3"> <br> <br>

	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">
				<c:out value="${item.ifcdSeq}" /> 
		|<a
					href="/infra/code/codeView?ifcdSeq=<c:out value="${item.ifcdSeq}"/>">
					<c:out value="${item.ifcdName}" />
				</a>
		|<c:out value="${item.ifcdDelNy}" />
				<br>
			</c:forEach>
		</c:otherwise>
	</c:choose>

</form>


<c:out value="${vo.startPage}" />
<nav aria-label="...">
	<ul class="pagination">
		<c:if test="${vo.startPage gt vo.pageNumToShow}">
			<li class="page-item"><a class="page-link"
				href="/infra/code/codeList?thisPage=${vo.startPage - 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue }"/>">
					Previous</a></li>
		</c:if>
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
			<c:choose>
				<c:when test="${i.index eq vo.thisPage}">
					<li class="page-item active"><a class="page-link"
						href="/infra/code/codeList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue }"/>">
							${i.index}</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="/infra/code/codeList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue }"/>">
							${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${vo.endPage ne vo.totalPages}">
			<li class="page-item"><a class="page-link"
				href="/infra/code/codeList?thisPage=${vo.endPage + 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue }"/>">Next</a></li>
		</c:if>
	</ul>
</nav>

<a
	href="/infra/code/codeForm?thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>
&shValue=<c:out value="${vo.shValue}"/>">
	등록</a>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script> 
<script type="text/javascript">
	$("#btnSubmit3").on(
			"click",
			function() {
				if (!checkNull($("#shIfcgSeq"), $("#shIfcgSeq").val(),
						"코드그룹을 선택해 주세요!"))
					retrun
				false;
				if (!checkNull($("#shValue"), $("#shValue").val(),
						"검색어를 입력해 주세요!"))
					retrun
				false;
			});
</script>


