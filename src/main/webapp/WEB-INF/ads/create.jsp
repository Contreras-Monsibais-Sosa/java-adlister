<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp" />

    <div class="container">
        <div class="content">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="field">
                <label for="title">Title</label>
                <div class="control">
                <input id="title" name="title" class="input is-rounded" type="text">
            </div>
            </div>
            <div class="field">
                <label for="description">Description</label>
                <div class="control">
                <textarea id="description" name="description" class="textarea"></textarea>
            </div>
            </div>
            <div class="select is-rounded">

            <select name="category">
                <c:forEach var="category" items="${category}">
                <option value="${category.id}">${category.cat}</option>
                </c:forEach>
            </select>
            </div>
            <br>
            <br>
            <div class="field">
                <div class="control">
            <input type="submit" class="button is-primary is-rounded">
                </div>
            </div>
        </form>


    </div>
    </div>
</body>
</html>
