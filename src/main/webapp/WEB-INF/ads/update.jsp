<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Ad" />
    </jsp:include>
</head>
<body>
<div class="container formContainer">
    <a href="/profile" class="btn" style="margin-top:2em;background: rgb(247,246,255);font-size: 20px;"><i class="fa-solid fa-arrow-left"></i></a>
    <h1 class="text-center">Update ad</h1>

    <form action="/ads/update" method="post">
        <div class="form-group">
            <label for="originalTitle" class="text-dark">The name file you would like to edit</label>
            <input id="originalTitle" name="originalTitle" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="title" class="text-dark">New Title</label>
            <input id="title" name="title" class="form-control" type="text" maxlength="45">
            <p class="text-secondary"><small>Limit 45 chracters</small></p>
        </div>
        <div class="form-group">
            <label for="description" class="text-dark">New description</label>
            <textarea id="description" name="description" class="form-control" type="text" maxlength="200"></textarea>
            <p class="text-secondary"><small>Limit 200 chracters</small></p>
        </div>
        <input type="submit" class="loginButton btn btn-block btn-primary" value="Update">

    </form>
</div>

</body>
</html>
