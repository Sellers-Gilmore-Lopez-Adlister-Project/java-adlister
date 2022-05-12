<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
           <jsp:param name="title" value="Please Log In" />
        </jsp:include>
    </head>
    <body>
        <%----- Navigation  --%>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        <%----- Form    --%>
        <div class="formContainer container">
            <%----- Header--%>
            <h1 class="pt-3">Sign In</h1>
            <%----- New User Question --%>
            <p class="noAccountPara">New here? <a href="/register">Create an Account</a> </p>
            <%----- Form    --%>
            <form action="/login" method="POST">
                <%----- Username --%>
                <div class="form-group loginSection">
                    <label for="username" class="text-dark loginLabel">Username</label>
                    <input id="username"
                           name="username"
                           class="form-control loginInput"
                           type="text"
                           minlength="4" maxlength="15"
                           title="letters and numbers only, no punctuation or special characters, and between 4 - 15 characters"
                           pattern="[A-Za-z0-9]+"
                           required>
                </div>
                <%----- Password --%>
                <div class="form-group loginSection">
                    <label for="password" class="loginLabel">Password</label>
                    <input id="password"
                           name="password"
                           class="form-control loginInput"
                           type="password"
                           min="6" maxlength="15"
<%--                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"            Uncomment when you are ready to go live, more security --%>
                           title="at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
                           required>
                </div>
                <%----- Submit Button --%>
                    <input type="submit" class=" w-100 loginButton btn btn-primary btn-block mt-3">
            </form>
        </div>
    </body>
</html>
