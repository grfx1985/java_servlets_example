<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/resources/bootstrap/css/bootstrap.css" var="bootstrapCssUrl"/>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${bootstrapCssUrl}"/>
</head>
<body>

<jsp:include page="/WEB-INF/menu.jsp"/>

<h1>Uczestnicy kursow</h1>

<table class="table table-bordered table-hover table-striped">
    <thead>
    <tr>
        <th>Imie</th>
        <th>Nazwisko</th>
        <th>Email</th>
        <th>Kurs</th>
    </tr>
    </thead>

    <tbody>

    <c:forEach var="user" items="${usersList}">
        <tr>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.email}</td>
            <td>${user.training}</td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
