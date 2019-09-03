<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: alicia
  Date: 2019-08-30
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Delete Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp"/>
<br>
<div class="container">
    <div class="content">
    <h1>Delete Your Ad</h1>
    <form action="/profile/deletead" method="post">
        <input type="hidden" name="ad_id" value="${ad.id}" style="display: none">

        <h2>Are you sure you want to delete this ad?</h2>
        <h2><c:out value="${ad.title}"/></h2>
        <p><c:out value="${ad.description}"/></p>
        <div class="field">
            <div class="control">
        <input type="submit" value="Delete this ad." class="button is-danger is-rounded">
            </div>
        </div>
    </form>
</div>
</div>
</body>
</html>
