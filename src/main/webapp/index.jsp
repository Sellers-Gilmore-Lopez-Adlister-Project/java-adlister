<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <%--Navigation--%>
    <%--Changes when you are either logged in or logged out--%>
    <% if (request.getSession().getAttribute("user") == null) { %>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <% } else { %>
    <jsp:include page="/WEB-INF/partials/navbar-loggedIn.jsp" />
    <% } %>


    <div class="container">
        <h1>Welcome to the Adlister!</h1>
    </div>
</body>
</html>
