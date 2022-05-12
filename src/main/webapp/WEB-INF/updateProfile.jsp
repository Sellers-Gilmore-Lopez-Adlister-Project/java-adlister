<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Update Ad" />
  </jsp:include>
</head>
<body>

<%--user form container--%>
<div class="container formContainer">
  <%----- Back Button to take to /profile  --%>
  <a href="/profile" class="btn" style="margin-top:1em;background: rgb(247,246,255);font-size: 20px;">
    <i class="fa-solid fa-arrow-left"></i>
  </a>
  <%--Header--%>
  <h1 class="text-center mb-3
">Update Profile</h1>
    <%--user form--%>
    <form action="/profile/update" method="post">
      <%--Update your Username--%>
      <div class="form-group">
        <label for="updateUsername" class="text-dark loginLabel">Update Username:</label>
        <input id="updateUsername"
               name="updateUsername"
               class="form-control loginInput"
               type="text"
               minlength="4" maxlength="15"
               title="letters and numbers only, no punctuation or special characters and between 4 and 15 characters"
               pattern="^[a-zA-Z][a-zA-Z0-9-_.]{4,15}$"
               />
          <p class="text-secondary">
            <small>letters and numbers only, no punctuation or special characters, between 4 and 15 characters</small>
          </p>
      </div>
      <%--Update your Email--%>
      <div class="form-group">
        <label for="updateEmail" class="text-dark loginLabel">New Email:</label>
        <input id="updateEmail"
               name="updateEmail"
               class="form-control loginInput"
               type="text"
               minlength="6" maxlength="254"
               pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
               title="Please provide a valid email"
               />
      </div>
      <%--Confirm your Email--%>
      <div class="form-group">
        <label for="confirmUpdateEmail">Confirm New Email:</label>
        <input id="confirmUpdateEmail"
               name="confirmUpdateEmail"
               class="form-control loginInput"
               min="6" maxlength="15"
               pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
               title="at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
               />
      </div>
      <input type="submit" class=" w-100 loginButton btn btn-primary btn-block mt-3">
        <p class="text-secondary text-center pt-1">
          <small>
            Logout to update Username!
          </small>
        </p>
    </form>
</div>

</body>
</html>

