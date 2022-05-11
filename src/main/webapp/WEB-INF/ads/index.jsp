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
<%--Header--%>
<h1 class="text-center m-5 text-white">Community Ad Board</h1>
<%--Main Content--%>
<main class="py-5">
    <div class="container">
        <div class="row">
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-4 col-sm-6 col-12 my-3">
                    <div class="card h-100 p-4" style="background:rgb(247,246,255);border-radius:12px;box-shadow: rgba(0, 0, 0, 0.16) 0 3px 6px, rgba(0, 0, 0, 0.23) 0 3px 6px;">
                        <div class="card-block">
                            <h4 class="card-title text-dark pb-2 m-0">${ad.title}</h4>
                            <hr class="w-75 m-0 py-1">
                            <p class="card-text py-1 text-dark">${ad.description}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</main>














</body>
</html>
