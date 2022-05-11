<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Delete Ad" />
    </jsp:include>
</head>
<body>
<div class="formContainer container">
    <a href="/profile" class="btn" style="margin-top:2em;background: rgb(247,246,255);font-size: 20px;"><i class="fa-solid fa-arrow-left"></i></a>

    <h1 class="text-center" >Delete Ad</h1>
    <%--    Warning--%>
    <div class="alert alert-danger" role="alert">
        Unexpected bad things will happen if you don’t read this!
    </div>
    <p class="text-dark pb-5">This action cannot be undone. This will permanently delete the ad, and remove all data associations.</p>
    <p class="text-dark m-0 p-0"><small>Please type name of form you would like to delete.</small></p>
    <%--Start of Form--%>
    <form action="/ads/delete" method="post">
        <div class="form-group loginSection">
            <input id="title" name="title" class="form-control loginInput" type="text">
        </div>
        <div class="w-100 d-flex justify-content-center">
        <input type="submit" class="loginButton" value="I understand">
        </div>
    </form>
</div>






</body>
</html>
