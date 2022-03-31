<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/>


<form method="post" action="/infra/member/memberUpdtAdmin">
	<input type="hidden" name="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>">

</form>