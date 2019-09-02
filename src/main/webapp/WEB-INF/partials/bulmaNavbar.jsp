<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar is-info" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
<%--        <a class="navbar-item" href="https://bulma.io">--%>
<%--            <img src="/pictures/pokeball.png" width="112" height="112">--%>
<%--        </a>--%>

        <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item" href="/">Home</a>
            <a class="navbar-item" href="/ads">Adlister</a>

        <div class="navbar-item field is-grouped is-grouped-left">
            <p class="control is-expanded">
                <input id="inputString" class="input" type="text" placeholder="Search ads" aria-label="Search">
            </p>
            <div class="help suggestionsBox" id="suggestions" style="display: none;">
                <div class="help" id="autoSuggestionsList"></div>
            </div>
            <p class="control navbar-item">
                <a class="button is-primary">Search</a>
            </p>
        </div>
        </div>


        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <div class="navbar-end">
                    <div class="navbar-item">
                        <div class="buttons">
                            <a class="button is-primary" href="/profile"><strong>Profile</strong></a>
                            <a class="button is-light" href="/ads/create">Create an Ad</a>
                            <a class="button is-light" href="/logout">Logout</a>
                        </div>
                    </div>
                </div>
            </c:when>

            <c:otherwise>
                <div class="navbar-end">
                    <div class="navbar-item">
                        <div class="buttons">
                            <a class="button is-primary" href="/register"><strong>Register</strong></a>
                            <a class="button is-light" href="/login">Login</a>
                        </div>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>

    </div>
    <script>

        var inputString = document.querySelector("#inputString");
        inputString.addEventListener('keyup', lookup);

        function lookup(e) {
            e.preventDefault();
            var search = inputString.value;
            var html = '';
            <c:forEach var="ad" items="${ads}">
            var title = "${ad.title}";

            if (title.toLowerCase().includes(search)) {
                $('#suggestions').show();
                html += "<li><a href=\"http://localhost:8080/ad?id=${ad.id}\">"+title+"</a></li>";
            }
            </c:forEach>
            $('#autoSuggestionsList').html(html);
        }

        function fill(thisValue) {
            $('#inputString').val(thisValue);
        }

    </script>
</nav>