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
<form action="/student/update" method="post">
    <div class="mb-3 mt-3">
        <label for="sno" class="form-label">학번:</label>
        <input type="number" maxlength="6" class="form-control" readonly id="sno" placeholder="학번을 입력하세요" name="sno" value="${data.sno}">
    </div>
    <div class="mb-3">
        <label for="sname" class="form-label">학생명:</label>
        <input type="text" class="form-control" id="sname" placeholder="이름을 입력하세요" name="sname" value="${data.sname}">
    </div>
    <div class="mb-3">
        <label for="sclass" class="form-label">학과:</label>
        <select class="form-select" id="sclass" name="sclass">
            <option value="실내건축과" <c:if test="${data.sclass eq '실내건축과'}">selected</c:if>>실내건축과</option>  <!--value 숫자나 문자-->
            <option value="토목공학과" <c:if test="${data.sclass eq '토목공학과'}">selected</c:if>>토목공학과</option>
            <option value="정보보안과" <c:if test="${data.sclass eq '정보보안과'}">selected</c:if>>정보보안과</option>
            <option value="정보통신과" <c:if test="${data.sclass eq '정보통신과'}">selected</c:if>>정보통신과</option>
            <option value="전자공학과" <c:if test="${data.sclass eq '전자공학과'}">selected</c:if>>전자공학과</option>
        </select>
    </div>
    <div class="mb-3">
        <label for="saddress" class="form-label">주소:</label>
        <input type="text" class="form-control" id="saddress" placeholder="주소을 입력하세요" name="saddress" value="${data.saddress}">
    </div>
    <div class="mb-3">
        <label for="sphone" class="form-label">전화번호:</label>
        <input type="tel" class="form-control" id="sphone" placeholder="전화번호를 입력하세요" name="sphone" value="${data.sphone}">
    </div>
    <button type="submit" class="btn btn-primary">수정</button>
    <button type="button" class="btn btn-danger" onclick="location.href='/student/delete?sno=${data.sno}'">삭제</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='/student/list'">취소</button>
</form>

<!--footer영역 footer.jsp-->
</body>
</html>