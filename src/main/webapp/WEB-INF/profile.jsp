<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp"/>
<br>

    <div class="container">
        <h1 class="title is-1">Welcome, ${sessionScope.user.username}!</h1>
        <div class="col-md-3">
            <img class="profileImg" src="../pictures/misty.png">
        </div>
        <div class="col-md-9">
        <h5>Profile Info</h5>
        <p>Username: ${user.username}</p>
        <p>Email: ${user.email}</p>
        <a href ="http://localhost:8080/updateProfile">Edit Info</a>
        </div>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-12 profileAd">
                <h1>Here are your Ads!</h1>
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
    </div>
<style>
    .profileImg{
        border-radius:100%;
        height:200px;
        width:200px;
        float:left;
        margin-bottom:10px;
    }
    .profileAd{

        background:#F8F8F8;
    }

</style>

</body>
</html>
