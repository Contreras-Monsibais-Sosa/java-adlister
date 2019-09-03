<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
            <div class="control is-expanded">
                <input id="inputString" class="input is-rounded" type="text" placeholder="Search ads" aria-label="Search">
            <div class="suggestionsBox" id="suggestions" style="display: none;">
                <table class="table is-bordered is-striped is-hoverable suggestionList" id="autoSuggestionsList"></table>
            </div>
            </div>
            <p class="control navbar-item">
                <a class="button is-primary is-rounded">Search</a>
            </p>
        </div>
        </div>


        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <div class="navbar-end">
                    <div class="navbar-item">
                        <div class="buttons">
                            <a class="button is-primary is-rounded" href="/profile"><strong>Profile</strong></a>
                            <a class="button is-light is-rounded" href="/ads/create">Create an Ad</a>
                            <a class="button is-light is-rounded" href="/logout">Logout</a>
                        </div>
                    </div>
                </div>
            </c:when>

            <c:otherwise>
                <div class="navbar-end">
                    <div class="navbar-item">
                        <div class="buttons">
                            <a class="button is-primary is-rounded" href="/register"><strong>Register</strong></a>
                            <c:set var="from" value="${fn:replace(pageContext.request.requestURI, '/WEB-INF', '')}"/>
                            <c:set var="from" value="${fn:replace(from, '/index', '')}"/>
                            <c:set var="from" value="${fn:replace(from, '/adDetail', '')}"/>
                            <c:set var="from" value="${fn:replace(from, '.jsp', '')}"/>
                            <c:set var="from" value="${fn:replace(from, '', '')}"/>
                            <a class="button is-light is-rounded" href="/login?from=${from}">Login</a>
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
            if (e.key === "Backspace") {
                $('#suggestions').hide();
                $('#autoSuggestionsList').hide();
            } else if (e.key) {
                $('#suggestions').show();
                $('#autoSuggestionsList').show();
                var search = inputString.value;
                var html = '';
                <c:forEach var="ad" items="${ads}">
                    var title = "${ad.title}";

                    if (title.toLowerCase().includes(search)) {
                        $('#suggestions').show();
                        html += "<tr><td><a href=\"http://localhost:8080/ad?id=${ad.id}\">"+title+"</a></td></tr>";
                    }
                </c:forEach>
                $('#autoSuggestionsList').html(html);
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            var $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
            if ($navbarBurgers.length > 0) {
                $navbarBurgers.forEach(function(el) {
                    el.addEventListener('click', function() {
                        var target =el.dataset.target;
                        var $target  = document.getElementById(target);

                        el.classList.toggle('is-active');
                        $target.classList.toggle('is-active');
                    })
                })
            }
        })

    </script>
</nav>