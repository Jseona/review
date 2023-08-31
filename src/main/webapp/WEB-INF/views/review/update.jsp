<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<!--header(메뉴)영역 menu.jsp-->
<jsp:include page="../menu.jsp"/>
<!--body(본문)영역-->
<form action="/review/update" method="post">
    <div class="mb-3 mt-3">
        <label for="rno" class="form-label">게시물번호:</label>
        <input type="number" maxlength="6" class="form-control" id="rno" placeholder="게시물번호을 입력하세요" name="rno" value="${data.rno}">
    </div>
    <div class="mb-3">
        <label for="sno" class="form-label">학생번호:</label>
        <input type="number" maxlength="6" class="form-control" id="sno" placeholder="학번을 입력하세요" name="sno" value="${data.sno}">
    </div>
    <div class="mb-3">
        <label for="rsubject" class="form-label">제목:</label>
        <input type="text" class="form-control" id="rsubject" placeholder="제목을 입력하세요" name="rsubject" value="${data.rsubject}">
    </div>
    <div class="mb-3">
        <label for="rcontent" class="form-label">내용:</label>
        <textarea class="form-control" rows="5" id="rcontent" name="rcontent">${data.rcontent}</textarea>
    </div>
    <div class="mb-3">
        <label for="rgrade" class="form-label">평점:</label>
        <select class="form-select" id="rgrade" name="rgrade">
            <option value="5" <c:if test="${data.rgrade eq '5'}">selected</c:if>>5</option>  <!--value 숫자나 문자-->
            <option value="4" <c:if test="${data.rgrade eq '4'}">selected</c:if>>4</option>
            <option value="3" <c:if test="${data.rgrade eq '3'}">selected</c:if>>3</option>
            <option value="2" <c:if test="${data.rgrade eq '2'}">selected</c:if>>2</option>
            <option value="1" <c:if test="${data.rgrade eq '1'}">selected</c:if>>1</option>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">수정</button>
    <button type="button" class="btn btn-danger" onclick="location.href='/review/delete?rno=${data.rno}'">삭제</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='/review/list'">취소</button>
</form>

<!--footer영역 footer.jsp-->
</body>
</html>