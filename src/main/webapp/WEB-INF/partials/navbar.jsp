<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/register">Register</a></li>
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input id="inputString" onkeyup="lookup(this.value);" class="form-control mr-sm-2" type="search" placeholder="Search Ads" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            <div class="suggestionsBox" id="suggestions" style="display: none;">
                <div class="suggestionList" id="autoSuggestionsList">
                </div>
            </div>
        </form>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
    <script>
        <c:forEach var="ad" items="${ads}">
        console.log("${ad.title}");
        </c:forEach>
    </script>

    <script>
        function lookup(inputString) {
            if (inputString.length === 0) {
                $('#suggestionsBox').hide();
            } else {
                $.post("/ads/searchAds.jsp", {queryString: inputString}, function (data) {
                    if (data.length > 0) {
                        $('#suggestions').show();
                        $('#autoSuggestionsList').html(data);
                    }
                });
            }
        }
    </script>
</nav>
