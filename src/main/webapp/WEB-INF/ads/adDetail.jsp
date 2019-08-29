<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Detail Page" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Ad Details</h1>
    <div class="col-md-6">
        <h2><c:out value="${ad.title}"/></h2>
        <p><c:out value="${ad.description}"/></p>
<%--        <p><c:out value="${ad.category}"/></p>--%>


    </div>

</div>
</body>
</html>
