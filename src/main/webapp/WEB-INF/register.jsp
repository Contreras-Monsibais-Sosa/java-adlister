<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp"/>
<br>
    <div class="container">
        <h1 class="title is-1">Please fill in your information.</h1>

        <c:if test="${sessionScope.error != null}">
            <h3 style='color:red; text-align: center'>${sessionScope.error}</h3>
            <% request.getSession().removeAttribute("error");%>
        </c:if>

        <form action="/register" method="post">
            <div class="field">
                <label for="username">Username</label>
                <div class="control has-icons-left">

                    <c:if test="${sessionScope.error!=null}">
                        <input id="username" name="username" class="input" type="text" value = ${sessionScope.username}>
                        <span class="icon is-small is-left">
                            <i class="fas fa-user"></i>
                        </span>
                        <%request.getSession().removeAttribute("username");%>
                    </c:if>

                    <input id="username" name="username" class="input" type="text" value="<c:out value="${sessionScope.username}"/>" >
                    <span class="icon is-small is-left">
                        <i class="fas fa-user"></i>
                    </span>
                </div>
            </div>

            <div class="field">
                <label for="email">Email</label>
                <div class="control has-icons-left">

                    <c:if test="${sessionScope.error!=null}">
                        <input id="email" name="email" class="input" type="text" value = ${sessionScope.email}>
                        <span class="icon is-small is-left">
                            <i class="fas fa-envelope"></i>
                        </span>
                        <%request.getSession().removeAttribute("email");%>
                    </c:if>

                    <input id="email" name="email" class="input" type="text" value="<c:out value="${sessionScope.email}"/>" >
                    <span class="icon is-small is-left">
                        <i class="fas fa-envelope"></i>
                    </span>
                </div>
            </div>

            <div class="filed">
                <div class="control">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="input" type="password">
                </div>
            </div>

            <div class="field">
                <div class="control">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password" class="input" type="password">
                    <p class="help is-danger">Password must be 6-20 characters long</p>
                </div>
            </div>

            <div class="field">
                <div class="control">
                    <input type="submit" class="button is-link">
                </div>
            </div>
        </form>
    </div>
</body>
</html>
