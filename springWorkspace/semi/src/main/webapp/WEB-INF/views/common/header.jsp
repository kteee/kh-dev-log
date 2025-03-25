<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/common/header.css">
<script defer src="/js/common/header.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    <c:if test="${not empty alertMsg}">
        alert('${sessionScope.alertMsg}');
    </c:if>
    <c:remove var="alertMsg" scope="session" />
</script>
<header>
    <div>빈칸</div>
    <div class="logo">로고</div>
    <div>
        <c:if test="${loginMemberVo != null}">
            <img src="http://127.0.0.1:8888/image/profile/${loginMemberVo.profile}" alt="프로필사진" width="100px" height="100px">
            <br>
            <button onclick="location.href='/member/logout'">로그아웃</button>
        </c:if>

        <c:if test="${loginMemberVo == null}">
            <a href="/member/join">회원가입</a>
            <a href="/member/login">로그인</a>
        </c:if>
    </div>
</header>