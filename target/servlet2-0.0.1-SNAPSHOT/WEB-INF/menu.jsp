<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/users" var="usersListUrl"/>
<c:url value="/user-create" var="userFormUrl"/>

<nav class="navbar navbar-inverse">
    <ul class="nav navbar-nav">
        <li><a href="${userFormUrl}">Formularz</a></li>
        <li><a href="${usersListUrl}">Lista</a></li>
    </ul>
</nav>