<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="Update Ad" />
        </jsp:include>
    </head>
    <body>
        <%----- Form Container  --%>
        <div class="container formContainer">
            <%----- Back Button to take to /profile  --%>
            <a href="/profile" class="btn" style="margin-top:2em;background: rgb(247,246,255);font-size: 20px;">
                <i class="fa-solid fa-arrow-left"></i>
            </a>
            <%----- Header  --%>
            <h1 class="text-center mb-3">Update ad</h1>
                <%--Start of Form--%>
                <form action="/ads/update" method="post">
                    <%--File You Like To Edit--%>
                    <div class="form-group">
                    <label for="originalTitle" class="text-dark">
                        The name file you would like to edit
                    </label>
                    <input id="originalTitle"
                           name="originalTitle"
                           class="form-control loginInput"
                           type="text"
                           maxlength="45"
                           title="letters and numbers only, no punctuation or special characters, and no more than 45 characters"
                           required>
                </div>
                <%--New Title--%>
                <div class="form-group">
                    <label for="title" class="text-dark">New Title</label>
                    <input id="title" name="title" class="form-control" type="text" maxlength="45">
                    <p class="text-secondary">
                        <small>
                            letters and numbers only, no punctuation or special characters, and no more than 45 characters
                        </small>
                    </p>
                </div>
                <%--New Description--%>
                <div class="form-group">
                    <label for="description" class="text-dark">New description</label>
                    <textarea id="description"
                              name="description"
                              class="form-control"
                              type="text"
                              maxlength="200"
                              required>
                    </textarea>
                    <p class="text-secondary">
                        <small>Limit 200 characters</small>
                    </p>
                </div>
                <%--Submit Button--%>
                <input type="submit" class="w-100 loginButton btn btn-block btn-primary" value="Update">
            </form>
        </div>

    </body>
</html>
