<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h1>Here are your ads!</h1>
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <a href="http://localhost:8080/ad?id=${ad.id}">Ad details</a>
                <form action="/profile/editad" method="get" id="${ad.id}">
                    <input type="hidden" name="ad_id" value="${ad.id}">
                    <button type="submit" class="btn btn-primary">Edit</button>
                </form>
                <form action="http://localhost:8080/profile/deletead?ad_id=${ad.id}">
                    <input type="hidden" name="ad_id" value="${ad.id}">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </div>
        </c:forEach>
        <h5>Profile Info</h5>
        <p>${user.username}</p>
        <p>${user.email}</p>
        <a href ="http://localhost:8080/updateProfile">Edit Info</a>
<%--            <button type="button">Edit Info</button>--%>
        </form>
    </div>

</body>
</html>
