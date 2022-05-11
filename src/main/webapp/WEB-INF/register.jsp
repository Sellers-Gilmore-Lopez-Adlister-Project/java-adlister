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
        <%--Header--%>
        <h1 class="pt-3 text-center">Let's get Started.</h1>
        <p class="text-dark text-center">Create your new account & Discover more ads</p>
            <%--user form--%>
            <form action="/register" method="post">
                    <%--Username--%>
                    <div class="form-group">
                        <label for="username" class="text-dark loginLabel">Username</label>
                        <input id="username"
                               name="username"
                               class="form-control loginInput"
                               type="text"
                               minlength="4" maxlength="15"
                               title="letters and numbers only, no punctuation or special characters and between 4 and 15 characters"
                               pattern="^[a-zA-Z][a-zA-Z0-9-_.]{4,15}$"
                               required>
                        <p class="text-secondary">
                            <small>letters and numbers only, no punctuation or special characters, between 4 and 15 characters</small>
                        </p>
                    </div>
                    <%--Email--%>
                    <div class="form-group">
                        <label for="email" class="text-dark loginLabel" >Email</label>
                        <input id="email"
                               name="email"
                               class="form-control loginInput"
                               type="text"
                        <%-- Just so you know the world record for email is Peter Craig just set--%>
                        <%-- the URDB world record for the longest active email address which is 345 characters in length.--%>
                        <%-- (The original version of RFC 3696 had a higher number of 320)--%>
                               minlength="6" maxlength="254"
                               pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                               title="Please provide a valid email"
                               required>
                    </div>
                    <%--Password--%>
                    <div class="form-group">
                        <label for="password" class="loginLabel">Password</label>
                        <input type="password"
                               id="password"
                               class="form-control loginInput"
                               name="password"
                               min="6" maxlength="15"
                               pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
                               required>
                        <p class="text-secondary">
                            <small>Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters</small>
                        </p>
                    </div>
                        <%--Confirm Password--%>
                        <div class="form-group">
                            <label for="confirm_password" class="text-dark loginLabel">Confirm Password</label>
                            <input type="password"
                                   id="confirm_password"
                                   class="form-control loginInput"
                                   name="confirm_password"
                                   min="6" maxlength="15"
                                   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
                                   title="at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
                                   required>
                        </div>
                        <input type="submit" class="loginButton mx-auto btn btn-primary btn-block">
                        <p class="noAccountPara pt-2 text-center">Already a member? <a href="/login">Login</a> </p>
            </form>
    </div>
</body>
</html>
