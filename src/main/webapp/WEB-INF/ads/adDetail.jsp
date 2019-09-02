<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Detail Page" />
    </jsp:include>
</head>
<body id="index">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <div class="col-md-12">
        <div class="col-md-6 ">
            <h1>Ad Details</h1>
            <h2><c:out value="${ad.title}"/></h2>
        <p><c:out value="${ad.description}"/></p>
        <p>Username: <c:out value="${user.username}"/></p>
            <p>Email:<span class="email"><c:out value="${user.email}"/></span></p>
        </div>
        <%--placeholder for now--%>
        <div class="col-md-6">
        <img class="adImg" src="../../pictures/starterpokemon.png">
        </div>
        <h1>${category.cat}</h1>
        <style>

            body{
                font-size:20px;
            }

            .email{
                color:#355B9D;
            }
            .adImg{
                height:50%;
                width:100%;
                margin-top:50px;
            }
        </style>
</div>
</div>
</body>
</html>
