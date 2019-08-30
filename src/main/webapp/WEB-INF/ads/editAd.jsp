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
    <form action="/ads/edit" method="post">
<%--        <input type="hidden" name="editAdId" value="${sessionScope.id}">--%>
    <input type="hidden" name="editId" value=4>
        <div class="form-group">
            <label for="editTitle">Title</label>
<%--            <input id="editTitle" name="editTitle" class="form-control" type="text" value="${sessionScope.title}">--%>
            <input id="editTitle" name="editTitle" class="form-control" type="text" value="Title">
        </div>
        <div class="form-group">
            <label for="editDescription">Description</label>
<%--            <textarea id="editDescription" name="editDescription" class="form-control" type="text">${sessionScope.description}</textarea>--%>
                <textarea id="editDescription" name="editDescription" class="form-control" type="text">Description</textarea>
        </div>
        <div class="form-group">
            <button class="btn btn-block btn-primary" type="submit">Update</button>
        </div>
    </form>
</div>
</body>
</html>
