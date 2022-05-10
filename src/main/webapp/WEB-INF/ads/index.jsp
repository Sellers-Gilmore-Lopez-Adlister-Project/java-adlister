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

<%-----------Original---------------%>
<%--<div class="container">--%>
<%--    <h1 class="text-center pt-3">Here Are all the ads!</h1>--%>

<%--    <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="col-md-6">--%>
<%--            <h2>${ad.title}</h2>--%>
<%--            <p>${ad.description}</p>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>

<%--</div>--%>

<%-----------Origina 2.0 ---------------%>
<h1 class="text-center pt-5">Community Ad Board</h1>
<div class="py-5">
    <div class="container">
        <div class="row">
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-4">
                    <div class="card my-3 p-2" style=" height:240px;background: rgb(247,246,255);border-radius:12px;box-shadow: rgba(0, 0, 0, 0.16) 0 3px 6px, rgba(0, 0, 0, 0.23) 0 3px 6px;">
                        <div class="card-block">
                            <h5 class="card-title text-dark text-center pt-2">${ad.title}</h5>
                            <hr class="mx-auto w-75">
                            <p class="card-text text-dark adDescription text-center">${ad.description}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>


</body>
</html>
