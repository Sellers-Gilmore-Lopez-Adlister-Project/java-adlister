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
  <h1>Update Profile</h1>
  <form action="/profile/update" method="post">
    <div class="form-group">
      <label for="updateUsername">Update Username:</label>
      <input id="updateUsername" name="updateUsername" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="updateEmail">New Email:</label>
      <input id="updateEmail" name="updateEmail" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="confirmUpdateEmail">Confirm New Email:</label>
      <input id="confirmUpdateEmail" name="confirmUpdateEmail" class="form-control" type="text">
    </div>
    <input type="submit" class="btn btn-block btn-primary">
  </form>

  <h2>Logout to update Username!</h2>
</div>

</body>
</html>

