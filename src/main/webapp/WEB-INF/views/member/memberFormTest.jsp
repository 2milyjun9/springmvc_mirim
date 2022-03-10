<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<h1>개인정보 등록</h1>

<form method="post" action="/infra/member/memberInst">
   <input type="text" name="ifmmName" placeholder="이름">
   <input type="text" name="ifmmId" placeholder="아이디">
   <input type="text" name="ifmmNickname" placeholder="닉네임">
   <input type="date" name="ifmmDob" placeholder="">

   <input type="submit" value="제출">
</form>