<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />

    <%--user form--%>
    <div class="container formContainer">
        <h1 class="pt-3 text-center">Let's get Started.</h1>
        <p class="text-dark text-center">Create your new account & Discover more ads</p>

        <form action="/register" method="post">
            <div class="form-group">
                <label for="username" class="text-dark loginLabel">Username</label>
                <input id="username" name="username" class="form-control" type="text" maxlength="15">
            </div>
            <div class="form-group">
                <label for="email" class="text-dark loginLabel" >Email</label>
                <input id="email" name="email" class="form-control" type="text" maxlength="50">
            </div>
            <div class="form-group">
                <label for="password" class="text-dark loginLabel">Password</label>
                <input id="password" name="password" class="form-control" type="password" minlength="6" maxlength="15">
            </div>
            <div class="form-group">
                <label for="confirm_password" class="text-dark loginLabel">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password" minlength="6" maxlength="15">
            </div>
            <input type="submit" class="loginButton mx-auto btn btn-primary btn-block">
            <p class="noAccountPara pt-2 text-center">Already a member? <a href="/login">Login</a> </p>
        </form>
    </div>
</body>
</html>
