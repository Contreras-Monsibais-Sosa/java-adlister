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
        <div class="columns">
        <div class="content">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <div class="column is-two-thirds">
            <img class="profileImg" src="../pictures/misty.png">
        </div>
        <div class="column is-one-third">
        <h5>Profile Info</h5>
        <p>Username: ${user.username}</p>
        <p>Email: ${user.email}</p>
        <a href ="http://localhost:8080/updateProfile">Edit Info</a>
        </div>
        </div>
        </div>
            <div class="columns">
                <div class="content">
        <c:forEach var="ad" items="${ads}">
            <div class="column profileAd">
                <h1>Here are your Ads!</h1>
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <a href="http://localhost:8080/ad?id=${ad.id}">Ad details</a>
                <form action="/profile/editad" method="get" id="${ad.id}">
                    <div class="field">
                        <div class="content">
                    <input type="hidden" name="ad_id" value="${ad.id}">
                    <button type="submit" class="button is-primary is-rounded">Edit</button>
                        </div>
                    </div>
                </form>
                <form action="http://localhost:8080/profile/deletead?ad_id=${ad.id}">
                    <div class="field">
                        <div class="control">
                    <input type="hidden" name="ad_id" value="${ad.id}">
                    <button type="submit" class="button is-danger is-rounded">Delete</button>
                        </div>
                    </div>
                </form>
            </div>
        </c:forEach>
    </div>
    </div>
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
