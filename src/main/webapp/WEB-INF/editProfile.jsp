<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Edit Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp"/>
<br>
<div class="container">
    <div class="content">
    <h1>Please Edit your information.</h1>
    <form action="/updateProfile" method="post">

        <div class="field">
            <input type="hidden" name="id" class="form-control" value="${user.id}">
            <label for="email">Email</label>
            <div class="control">
            <input id="email" name="email" class="form-control" type="text" value="${user.email}">
        </div>
        </div>
        <div class="field">
            <div class="control">
        <input type="submit" class="button is-info">
            </div>
        </div>
    </form>
</div>
</div>
</body>
</html>
