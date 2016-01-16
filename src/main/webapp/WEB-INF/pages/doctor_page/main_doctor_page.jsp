<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>"/>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="navbar-brand"><a>LaksmiMed</a></div>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="<c:url value="/main"/>">Главная</a></li>
                <li><a href="<c:url value="/patientInfoEditor"/>">Добавить пациента</a></li>
                <li><a href="<c:url value="/about"/>">О сайте</a></li>
                <li><a href="<c:url value="/help"/>">Помощь</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<c:url value="/personalPage"/>">Личная страница</a></li>
                <li><a href="<c:url value="/logout"/>">Выйти</a></li>
            </ul>
        </div>
    </nav>
    <table class="table table-striped table-bordered" cellpadding="0" width="100%">
        <thead>
            <tr>
                <td>№</td>
                <td>ФИО</td>
                <td>Пол</td>
                <td>Дата рождения</td>
                <td>Номер карты</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="patient" items="${doctor.patients}" varStatus="counter">
                <tr>
                    <td>${counter.count}</td>
                    <td>${patient.fullName}</td>
                    <td>${patient.gender.gender2String()}</td>
                    <td>${patient.birthdate}</td>
                    <td>${patient.cardNumber}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-2.1.4.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</html>
