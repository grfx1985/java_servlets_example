<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/resources/bootstrap/css/bootstrap.css" var="bootstrapCssUrl"/>
<c:url value="/user-create" var="createUserUrl"/>


<html>
<head>
    <title>Rejestracja uczestnikow</title>
    <link rel="stylesheet" href="${bootstrapCssUrl}"/>
</head>
<body>
<jsp:include page="menu.jsp"/>

<div class="container">

    <h1>Szkolenie Java</h1>
    <form method="post" action="${createUserUrl}" class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-md-2">Imie:</label>
            <div class="col-md-10">
                <input class="form-control" type="text" name="imie" value="" placeholder="Wpisz swoje imie">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Nazwisko:</label>
            <div class="col-md-10">
                <input class="form-control" type="text" name="nazwisko" value="" placeholder="Wpisz swoje nazwisko">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Haslo:</label>
            <div class="col-md-10">
                <input class="form-control" type="password" name="password" value="" placeholder="Wpisz swoje haslo">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2">Email:</label>
            <div class="col-md-10">
                <input class="form-control" type="email" name="email" value="" placeholder="Wpisz swoj email">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Kurs:</label>
            <div class="col-md-10">
                <select class="form-control" name="kurs">
                    <option value="1">Java</option>
                    <option value="2">Spring</option>
                    <option value="3">Hibernate</option>
                    <option value="4">SQL</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2">Certyfikat?</label>
            <div class="col-md-10">
                <input type="radio" name="certyfikat" value="true"> Tak
                <input type="radio" name="certyfikat" value="false"> Nie
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input class="btn btn-primary" type="submit" value="Zarejestruj sie">
            </div>
        </div>
    </form>
</div>
</body>
</html>
