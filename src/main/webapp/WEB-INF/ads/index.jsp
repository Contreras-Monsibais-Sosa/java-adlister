<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp"/>

<div class="container">
    <img src="../../pictures/PokeLister.png">

    <div class="content">
        <h1>Here Are all the ads!</h1>

    <%--    <div class="columns">--%>
        <c:forEach var="ad" items="${ads}">
            <div class="column is-three-fifths">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <a href="http://localhost:8080/ad?id=${ad.id}">Ad details</a>
            </div>
            <br>
        </c:forEach>
    </div>
</div>
</body>
</html>