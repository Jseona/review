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
<form action="/result/resultlist" method="get">
    <div class="mb-3 mt-3">
        <label for="sno" class="form-label">학생번호:</label>
        <input type="number" maxlength="6" class="form-control" id="sno" placeholder="학번을 입력하세요" name="sno">
    </div>
    <button type="submit" class="btn btn-primary">조회</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='/'">취소</button>
</form>

<!--footer영역 footer.jsp-->
</body>
</html>