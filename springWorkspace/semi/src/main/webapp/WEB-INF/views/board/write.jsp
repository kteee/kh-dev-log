<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEMI</title>
<link rel="stylesheet" href="/css/common/body.css">
<script defer src="/js/board/write.js"></script>
</head>
<body>

    <%@ include file="/WEB-INF/views/common/asideLeft.jsp" %>

   <main>
        <%@ include file="/WEB-INF/views/common/header.jsp" %>
        <%@ include file="/WEB-INF/views/common/nav.jsp" %>
        <h1>게시글 작성</h1>
        <form action="/board/write" method="post" enctype="multipart/form-data">
            <input type="text" name="title" placeholder="제목">
            <br>
            <textarea name="content" placeholder="내용"></textarea>
            <br>
            <lable>카테고리 : </lable>
            <select name="categoryNo">
                <c:forEach items="${cateVoList}" var="cateVo">
                    <option value="${cateVo.no}">${cateVo.name}</option>
                </c:forEach>
            </select>
            <br>
            <hr>
            <!-- <select id="cate-select">
            </select> -->
            
            <input type="file" name="f" multiple>
            <div class="preview-area">
                
            </div>
            <hr>
            <input type="submit" value="작성하기">
        </form>
    </main>

    <%@ include file="/WEB-INF/views/common/asideRight.jsp" %>

</body>
</html>