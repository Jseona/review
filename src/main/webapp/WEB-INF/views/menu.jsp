<%@ page contentType="text/html; charset=UTF-8" language="java" %><!--한글깨짐 및 자바컴파일-->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">부천대학교</a> <!--index.jsp이동-->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span> <!--3선버튼-->
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar"> <!--주메뉴-->
            <ul class="navbar-nav"> <!--메뉴구성-->
                <li class="nav-item"> <!--1개의 메뉴-->
                    <a class="nav-link" href="/student/list">학생관리</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/review/list">수강평관리</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/result/list">평가결과지</a>
                </li>
            </ul>
        </div>
    </div>
</nav>