<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Detail Page" />
    </jsp:include>
    <style>
        body{
            font-size:20px;
        }
        .email{
            color:#355B9D;
        }
        .detailImg{
            width:100%;
            margin-top:50px;
        }
    </style>
</head>
<body id="index">
<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp" />

<div class="container">
    <div class="content">
    <div class="columns">
        <div class="column">
            <h1>Ad Details</h1>
            <h2><c:out value="${ad.title}"/></h2>
            <p><c:out value="${ad.description}"/></p>
            <p>Username: <c:out value="${user.username}"/></p>
            <p>Email:<span class="email"><c:out value="${user.email}"/></span></p>
        </div>
        <%--placeholder for now--%>
        <div class="column">
            <img class="detailImg" src="/pictures/starterpokemon.png">
        </div>
    </div>

        <h1>${category.cat}</h1>

    </div>
</div>
</body>
</html>