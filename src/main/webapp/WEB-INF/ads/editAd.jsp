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
<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp"/>
<br>
<div class="container">
    <div class="content">
    <h1>Edit Your Ad</h1>

    <form action="/profile/editad" method="post">

        <div class="field">

            <label for="editTitle">Title</label>
            <div class="control">
                <input id="editTitle" name="editTitle" class="form-control" type="text" value="${ad.title}">
            </div>
        </div>
        <input type="hidden" name="ad_id" value="${ad.id}">

            <div class="field">
            <label for="editDescription">Description</label>
                <div class="control">
                <textarea id="editDescription" name="editDescription" class="form-control" value="${ad.description}">${ad.description}</textarea>
                </div>
            </div>

        <div class="field">
            <div class="control">
            <input type="Submit" class="btn btn-block btn-primary">
            </div>
        </div>
    </form>
</div>
</div>
</body>
</html>
