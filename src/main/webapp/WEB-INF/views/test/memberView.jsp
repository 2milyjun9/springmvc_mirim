<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


	<c:out value="${item.ifmmSeq}"/> 
		 | <c:out value="${item.ifmmName}"/>
		 | <c:out value="${item.ifmmId}"/>
		 | <c:out value="${item.ifmmNickname}"/> 	 
		 | <c:out value="${item.ifmmGrade}"/> 
		 | <c:out value="${item.ifmmDob}"/> 



