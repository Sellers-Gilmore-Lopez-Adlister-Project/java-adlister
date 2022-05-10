<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <%--Form--%>
    <div class="formContainer container">
        <h1 class="pt-3">Sign In</h1>
        <p class="noAccountPara">New here? <a href="/register">Create an Account</a> </p>
        <form action="/login" method="POST">
            <div class="form-group loginSection">
                <label for="username" class="loginLabel">Username</label>
                <input id="username" name="username" class="form-control loginInput" type="text">
            </div>
            <div class="form-group loginSection">
                <label for="password" class="loginLabel">Password</label>
                <input id="password" name="password" class="form-control loginInput" type="password">
            </div>
            <input type="submit" class="loginButton" value="Log In">
        </form>
    </div>
</body>
</html>
