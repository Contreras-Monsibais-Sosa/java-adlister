<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <a href="http://localhost:8080/ad?id=${ad.id}">Ad details</a>
            <form action="/ads/edit" method="post" id="editad${ad.id}">
                <input type="hidden" name="ad_id" value="${ad.id}">
                <button type="submit" class="btn btn-primary">Edit</button>
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
