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
<h2>학사관리 목록</h2>
<button type="button" class="btn btn-primary" onclick="location.href='/student/insert'">등록</button>

<c:forEach var="data" items="${lists}">
    <a href="/student/update?sno=${data.sno}">
        <!--출력할 내용 폼-->
        <div class="alert alert-success"><!--알림창-->
            <div class="row"><!--알림창에 1행을 추가(12칸)-->
                <div class="col-sm-1">${data.sno}</div> <!--칸을 나누기-->
                <div class="col-sm-1"><strong>${data.sname}</strong></div>
                <div class="col-sm-3">${data.sclass}</div>
                <div class="col-sm-4">${data.saddress}</div>
                <div class="col-sm-3">${data.sphone}</div>
            </div>
            <!--<strong>Success!</strong> Indicates a successful or positive action.-->
        </div>
    </a>
</c:forEach>


<!--footer영역 footer.jsp-->
</body>
</html>