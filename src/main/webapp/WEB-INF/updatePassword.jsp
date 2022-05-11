<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Password" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Update Password</h1>
    <form action="/profile/updatePassword" method="post">
        <div class="form-group">
            <label for="currentPassword">Current password:</label>
            <input id="currentPassword" name="currentPassword" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="newPassword">New Password:</label>
            <input id="newPassword" name="newPassword" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirmNewPassword">Confirm New Password:</label>
            <input id="confirmNewPassword" name="confirmNewPassword" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
