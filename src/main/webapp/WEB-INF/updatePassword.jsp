<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Password" />
    </jsp:include>
</head>
    <body>
        <%----- Form Container  --%>
        <div class="container formContainer">
            <%----- Back Button to take to /profile  --%>
            <a href="/profile" class="btn" style="margin-top:1em;background: rgb(247,246,255);font-size: 20px;">
                <i class="fa-solid fa-arrow-left"></i>
            </a>
            <%----- Header  --%>
            <h1 class="text-center pt-2">Update Password</h1>
            <p class="text-center">Change your current password</p>
            <%----- Form  --%>
            <form action="/profile/updatePassword" method="post">
                <%----- Current Password --%>
                <div class="form-group">
                    <label for="currentPassword">Current password:</label>
                    <input id="currentPassword"
                           name="currentPassword"
                           class="form-control loginInput"
                           type="password"
                           min="6" maxlength="15"
<%--                       pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" --%>
                           title="at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
                           required>
                </div>
                <%----- New Password --%>
                <div class="form-group">
                    <label for="newPassword">New Password:</label>
                    <input id="newPassword"
                           class="form-control loginInput"
                           type="password"
                           min="6" maxlength="15"
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
                           title="at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
                           required>
                    <p class="text-secondary">
                        <small>Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters</small>
                    </p>
                </div>
                <%----- Confirm Password --%>
                <div class="form-group">
                    <label for="confirmNewPassword">Confirm New Password:</label>
                    <input id="confirmNewPassword"
                           name="confirmNewPassword"
                           class="form-control loginInput"
                           type="password"
                           min="6" maxlength="15"
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
                           title="at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
                           required>
                </div>
                <%----- Submit Button --%>
                <input type="submit" class=" w-100 mt-2 btn btn-block loginButton" value="Submit">
            </form>
        </div>
    </body>
</html>
