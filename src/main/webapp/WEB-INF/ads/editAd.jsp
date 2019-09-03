<%--
  Created by IntelliJ IDEA.
  User: alicia
  Date: 2019-08-29
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                <input id="editTitle" name="editTitle" class="input is-rounded" type="text" value="${ad.title}">
            </div>
        </div>
        <input type="hidden" name="ad_id" value="${ad.id}">

            <div class="field">
            <label for="editDescription">Description</label>
                <div class="control">
                <textarea id="editDescription" name="editDescription" class="textarea" value="${ad.description}">${ad.description}</textarea>
                </div>
            </div>
        <div class="select is-rounded">

            <select name="category">
                <option value="${currentCat.id}">Edit Category</option>
                <c:forEach var="category" items="${category}">
                    <option value="${category.id}">${category.cat}</option>
                </c:forEach>
            </select>
        </div>
        <br>
        <br>
        <div class="field">
            <div class="control">
            <input type="Submit" class="button is-primary is-rounded">
            </div>
        </div>
    </form>
</div>
</div>
</body>
</html>
