<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>

<%--Navigation--%>
<%--Changes when you are either logged in or logged out--%>
<% if (request.getSession().getAttribute("user") == null) { %>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<% } else { %>
<jsp:include page="/WEB-INF/partials/navbar-loggedIn.jsp" />
<% } %>



<body>
    <div class="container formContainer">
        <h1 class="text-center pt-2">Create a new Ad</h1>
        <p class="text-center text-dark">Inform the community with the latest ads.</p>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title" class="text-dark">Title</label>
                <input id="title" name="title" class="form-control" type="text" maxlength="45">
                <p class="text-secondary"><small>Limit 45 chracters</small></p>
            </div>
            <div class="form-group">
                <label for="description" class="text-dark">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" maxlength="200"></textarea>
                <p class="text-secondary"><small>Limit 200 chracters</small></p>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
