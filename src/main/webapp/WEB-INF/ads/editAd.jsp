<%--
  Created by IntelliJ IDEA.
  User: alicia
  Date: 2019-08-29
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Edit Your Ad</h1>
    <form action="/ads/editad" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="editTitle" class="form-control" type="${sessionScope.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="editDescription" class="form-control" type="text">${sessionScope.description}</textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary" value-="Edit Ad">
    </form>
</div>
</body>
</html>
