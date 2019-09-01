<%@ page import="com.codeup.adlister.dao.DaoFactory" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <style><%@include file="WEB-INF/CSS/cssindex.css"%></style>

</head>
<body>
<%--    <jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>

    <img id="indexHeaderImg"src="pictures/PokeLister.png">
    <br>
    <div id="btnHome" role="group" aria-label="Basic example">
        <form method="get" action="/login">
        <button type="submit" class="btn btn-primary btnHome btn-lg">Login</button>
        </form>

        <form method="get" action="/ads">
        <button type="submit" class="btn btn-primary btnHome btn-lg">Continue</button>
        </form>

    </div>
</body>


    <div class="container">
    </div>
</body>
</html>

