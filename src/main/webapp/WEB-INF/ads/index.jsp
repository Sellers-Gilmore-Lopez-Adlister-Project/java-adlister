<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
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
    <h1 class="text-center pt-3">Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

</div>

</body>
</html>
