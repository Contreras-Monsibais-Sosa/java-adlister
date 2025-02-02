<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
            <a class="navbar-brand" href="/">Home</a>

        </div>



        <c:choose>
            <c:when test="${sessionScope.user != null}">

            <ul class="nav navbar-nav navbar-right">
                <li><a href="/profile">Profile</a></li>
                <li><a href="/logout">Logout</a></li>
                <li><a class="usernav" href="/ads/create">Create</a></li>
                <li></li>
            </ul>

        </c:when>

        <c:otherwise>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="/register">Register</a></li>
                <li><a href="/login">Login</a></li>
                <li></li>
            </ul>

        </c:otherwise>

        </c:choose>



        <form class="form-inline my-2 my-lg-0">
            <input id="inputString" class="form-control mr-sm-2" type="text" placeholder="Search Ads" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            <div class="suggestionsBox" id="suggestions" style="display: none;">
                <div class="u" id="autoSuggestionsList"></div>
            </div>
        </form>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
    <script>

    </script>

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
