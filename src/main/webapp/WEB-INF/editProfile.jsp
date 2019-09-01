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
    <h1 class="title is-1">Please Edit your information.</h1>
    <form action="/updateProfile" method="post">

        <div class="form-group">
            <input type="hidden" name="id" class="form-control" value="${user.id}">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" value="${user.email}">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>
