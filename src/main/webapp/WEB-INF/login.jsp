<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp"/>


<div class="container">
    <div class="content">

        <div class="container">
            <div class="content">
                <h1>Please Log In</h1>

                <c:if test="${sessionScope.error != null}">
                    <h3 style='color:red; text-align: center'>${sessionScope.error}</h3>
                    <% request.getSession().removeAttribute("error");%>
                </c:if>

                <form action="/login" method="POST">

                    <div class="field">
                        <label for="username">Username</label>
                        <div class="control has-icons-left">

                    <c:if test="${sessionScope.error!=null}">
                        <input id="username" name="username" class="input is-rounded" type="text" value = ${sessionScope.username}>
                        <span class="icon is-small is-left">
                            <i class="fas fa-user"></i>
                        </span>

                        <%request.getSession().removeAttribute("username");%>
                        </c:if>
                    <input id="username" name="username" class="input is-info is-rounded" type="text" value="<c:out value="${sessionScope.username}"/>">
                    <span class="icon is-small is-left">
                        <i class="fas fa-user"></i>
                    </span>
                        </div>
                    </div>

                    <div class="field">
                        <label for="password">Password</label>
                        <div class="control">
                            <input id="password" name="password" class="input is-rounded" type="password">
                        </div>
                    </div>

                    <div class="field">
                        <div class="control">
                            <input type="hidden" name="from" value="${param.from}">
                            <input type="submit" class="button is-link is-rounded" value="Log In">
                        </div>
                    </div>
                </form>
        </div>
    </div>
</body>
</html>