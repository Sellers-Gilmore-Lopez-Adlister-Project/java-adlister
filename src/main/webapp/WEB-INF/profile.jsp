<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar-loggedIn.jsp" />



<%--    <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="col-md-6">--%>
<%--            <h2>${ad.title}</h2>--%>
<%--            <p>${ad.description}</p>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>


    <%-----------Original 2.0 ---------------%>
    <%--Header--%>
    <div class="container">
        <h1 class="py-5 text-center text-white">Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <%--Main Content--%>
    <main class="py-5">
        <div class="container">
            <div class="row">
                <c:forEach var="ad" items="${ads}">
                    <div class="col-lg-4 col-sm-6 col-12 my-3">
                        <div class="card h-100 p-4" style="background:rgb(247,246,255);border-radius:12px;box-shadow: rgba(0, 0, 0, 0.16) 0 3px 6px, rgba(0, 0, 0, 0.23) 0 3px 6px;">
                            <div class="card-block">
                                <section class="float-right">
                                    <a href="/ads/update" class="btn" style="background: rgb(247,246,255);"><i class="fa-solid fa-pen-to-square"></i></a>
                                    <a href="/ads/delete" class="btn" style="background: rgb(247,246,255);"><i class="fa-solid fa-trash-can"></i></a>
                                </section>
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
