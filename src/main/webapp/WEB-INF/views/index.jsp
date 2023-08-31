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
<jsp:include page="menu.jsp"/>
<!--body(본문)영역-->
<!--Div 그룹단으로 분리해서 작업(작업별로)-->
<div class="mt-4 p-5 bg-primary text-white rounded">
    <h1>신입생 모집</h1>
    <p>24학년도 신입생을 모집합니다.</p>
</div>
<div>

</div>
<div>

</div>

<!--footer영역 footer.jsp-->
<jsp:include page="footer.jsp"/>
</body>
</html>