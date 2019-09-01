<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <div class="content">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="field">
                <label for="title">Title</label>
                <div class="control">
                <input id="title" name="title" class="form-control" type="text">
            </div>
            </div>
            <div class="field">
                <label for="description">Description</label>
                <div class="control">
                <textarea id="description" name="description" class="form-control"></textarea>
            </div>
            </div>
            <div class="field">
                <div class="control">
            <input type="submit" class="button is-primary">
                </div>
            </div>
        </form>
    </div>
    </div>
</body>
</html>
