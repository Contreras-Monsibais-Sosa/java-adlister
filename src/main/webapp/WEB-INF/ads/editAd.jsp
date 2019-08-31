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
<<<<<<< HEAD
    <input type="hidden" name="ad_id" value="${ad.id}">

            <label for="editTitle">Title</label>
            <input id="editTitle" name="editTitle" class="form-control" type="text" value="${ad.title}">

            <label for="editDescription">Description</label>
                <textarea id="editDescription" name="editDescription" class="form-control" type="text" value = "${ad.description}">${ad.description}</textarea>

<%--        <div class="form-group">--%>
=======
        <%--        <input type="hidden" name="editAdId" value="${sessionScope.id}">--%>
        <input type="hidden" name="editId" value="${ad.id}">
        <div class="form-group">
            <label for="editTitle">Title</label>
            <%--            <input id="editTitle" name="editTitle" class="form-control" type="text" value="${sessionScope.title}">--%>
            <input id="editTitle" name="editTitle" class="form-control" type="text" value=${ad.title}>
        </div>
        <div class="form-group">
            <label for="editDescription">Description</label>
            <%--            <textarea id="editDescription" name="editDescription" class="form-control" type="text">${sessionScope.description}</textarea>--%>
            <textarea id="editDescription" name="editDescription" class="form-control" type="text" value = ${ad.description}></textarea>
        </div>
        <div class="form-group">
>>>>>>> c19a2e0603bbdf81ae7ba13d7cba132d42e5db21
            <input type="Submit" class="btn btn-block btn-primary">
<%--        </div>--%>
    </form>
</div>
</body>
</html>
