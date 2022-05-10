<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Ad" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Update ad</h1>
    <form action="/ads/update" method="post">
        <div class="form-group">
            <label for="originalTitle">Title of ad you wish to update:</label>
            <input id="originalTitle" name="originalTitle" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="title">New title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">New description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>

</body>
</html>
