<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/bulmaNavbar.jsp"/>

<div class="container">
    <img src="../../pictures/PokeLister.png">

    <div class="content">
        <h1>Here Are all the ads!</h1>
<form method="get" action="/category">
        <div class="field">
            <div class="control">
                <div class="select">
                    <select name="filterOut" id="filterOut">
                        <option value="0">Filter By Category:</option>
                        <c:forEach var="cat" items="${category}">
                            <option class="filterBy" value="${cat.id}">${cat.cat}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
        <div class="field">
        <div class="control">
            <input type="submit" class="button is-primary is-rounded">
        </div>
    </div>
</form>
        <c:choose>
            <c:when test=""></c:when>
        </c:choose>
        <c:forEach var="ad" items="${ads}">
            <div id="pokeLister" class="column is-three-fifths">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <a href="http://localhost:8080/ad?id=${ad.id}">Ad details</a>
            </div>
            <br>
        </c:forEach>
    </div>



</div>

<script>
    var filterOut = document.querySelector("#filterOut");
    filterOut.addEventListener('click', filter);

    function filter(e) {
        e.preventDefault();
        var currentCat = $('#filterOut').val();

    }

</script>
</body>
</html>