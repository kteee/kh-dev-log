<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEMI</title>
<link rel="stylesheet" href="/css/common/body.css">
<link rel="stylesheet" href="/css/notice/detail.css">
<script defer src="/js/notice/detail.js"></script>
</head>
<body>

    <%@ include file="/WEB-INF/views/common/asideLeft.jsp" %>

   <main>
        <%@ include file="/WEB-INF/views/common/header.jsp" %>
        <%@ include file="/WEB-INF/views/common/nav.jsp" %>
        <h1>공지사항 상세</h1>

        <h3>${vo.title}</h3>
        <span>작성자 : ${vo.writerNick}</span>
        <br>
        <span>조회수 : ${vo.hit}</span>
        <br>
        <span>작성일시 : ${vo.createDate}</span>
        <br>
        <p>${vo.content}</p>
        <hr>
        <button onclick="location.href='/notice/edit?no=${vo.no}'">수정</button>
        <button>삭제</button>
        
        <hr>

        <div id="reply-area">
            <div id="reply-write-area">
                <input type="text" name="content" placeholder="댓글을 입력하세요.">
                <button onclick="writeReply(${vo.no});">작성하기</button>
            </div>
            <br>
            <div id="reply-list-area" noticeNo="${vo.no}">

            </div>
        </div>

    </main>

    <%@ include file="/WEB-INF/views/common/asideRight.jsp" %>

</body>
</html>