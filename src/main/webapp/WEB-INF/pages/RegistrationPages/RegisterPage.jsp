<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title></title>
    <link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap-theme.min.css"/>">
</head>
<body>
<c:url var="registerAction" value="/register"/>
<div class="container">
  <fieldset>
    <legend>Регистрация учетной записи доктора</legend>
    <form:form cssClass="form-horizontal" method="post" action="${registerAction}" modelAttribute="signupData">
        <div class="row">
          <div class="form-group">
            <label>ФИО <span style="color:red">${loginError}</span></label>
            <form:input cssClass="form-control" path="fullName" placeholder="ФИО"/>
          </div>
        </div>
        
        <div class="row">
          <div class="form-group">
            <label>Должность</label>
            <form:input cssClass="form-control" path="jobPost" id="jobPost" placeholder="Должность"/>
          </div>
        </div>
        
        <div class="row">
          <div class="form-group">
            <label>Место работы</label>
            <form:input cssClass="form-control" path="jobPlace" id="jobPlace" placeholder="Место работы"/>
          </div>
        </div>
        
        <div class="row">
          <div class="form-group">
            <label>Телефон</label>
            <form:input cssClass="form-control" path="phoneNumber" id="phoneNumber" placeholder="Телефон"/>
          </div>
        </div>
       
        <div class="row">
          <div class="form-group">
            <label>Электронная почта <span style="color:red"><form:errors path="email" cssClass="errors"/></span></label>
            <form:input cssClass="form-control" path="email" id="email" placeholder="Электронная почта"/>
          </div>
        </div>
        
        <div class="row">
          <div class="form-group">
            <label>Логин  <span style="color:red"><form:errors path="login" cssClass="errors"/></span></label>
            <form:input cssClass="form-control" path="login" id="login" placeholder="Логин"/>
          </div>
        </div>
        
        <div class="row">
          <div class="form-group">
            <label>Пароль <span style="color:red"><form:errors path="password" cssClass="errors"/></span></label>
            <form:password cssClass="form-control" path="password" id="password" placeholder="Пароль"/>
          </div>
        </div>
        
        <div class="row">
            <div class="form-group">
                <label>Подтверждение пароля <span style="color:red"><form:errors path="confirmPassword" cssClass="errors"/></span></label>
                <form:password cssClass="form-control" path="confirmPassword" id="confirmPassword" placeholder="Пароль"/>
            </div>
        </div>
        
        <div class="row">
          <button type="submit" class="btn btn-primary">Регистрация</button>
        </div>
    </form:form>
  </fieldset>
</div>
</body>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-2.1.4.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
</html>