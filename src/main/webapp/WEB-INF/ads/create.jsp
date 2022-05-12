<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <%----- Form Container  --%>
    <div class="container formContainer">
        <%----- Back Button to take to /profile  --%>
            <a href="/profile" class="btn" style="margin-top:1em;background: rgb(247,246,255);font-size: 20px;"><i class="fa-solid fa-arrow-left"></i></a>
            <%----- Header  --%>
            <h1 class="text-center pt-2">Create a new Ad</h1>
            <p class="text-center">Inform the community with the latest ads.</p>
            <%----- Form  --%>
            <form action="/ads/create" method="post">
                <%----- Title of ad --%>
                <div class="form-group">
                    <label for="title">Title</label>
                    <input id="title"
                           name="title"
                           class="form-control loginInput"
                           type="text"
                           maxlength="45"
                           title="letters and numbers only, no punctuation or special characters, and a max of 45 characters"
<%--                           pattern="[A-Za-z0-9]{1,45}"--%>
                           required>
                    <p class="text-secondary">
                        <small>letters and numbers only, no punctuation or special characters, and a max 45 characters</small>
                    </p>
                </div>
                <%----- Description of Ad  --%>
                <div class="form-group">
                    <label for="description" class="">Description</label>
                    <textarea id="description"
                              name="description"
                              class="form-control"
                              type="text"
                              minlength="3" maxlength="200"
                              required>
                    </textarea>
                    <p class="text-secondary">
                        <small>Limit 200 characters</small>
                    </p>
                </div>
                <%--Contact info--%>
                    <div class="form-group">
                        <label for="contactInfo" class="">Contact Info</label>
                        <textarea id="contactInfo"
                                  name="contactInfo"
                                  class="form-control"
                                  type="text"
                                  minlength="3" maxlength="200"
                                  required>
                    </textarea>
                        <p class="text-secondary">
                            <small>Limit 200 characters</small>
                        </p>
                    </div>
                <%----- Submit Button of Ad  --%>
                <input type="submit" class="btn w-100 btn-block btn-primary loginButton" value="Create Ad">
            </form>
    </div>
</body>

</html>
