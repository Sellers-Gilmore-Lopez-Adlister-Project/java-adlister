<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>

    <div class="container formContainer">
        <a href="/profile" class="btn" style="margin-top:2em;background: rgb(247,246,255);font-size: 20px;"><i class="fa-solid fa-arrow-left"></i></a>
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
            <input type="submit" class="btn btn-block btn-primary loginButton" value="Create user">

        </form>
    </div>
</body>
</html>
