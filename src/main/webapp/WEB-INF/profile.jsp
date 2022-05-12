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
    <div class="container mx-auto pt-5 h-25 w-100 d-flex justify-content-center align-items-center">
        <h1 class="text-center text-white m-2 d-inline">Welcome, ${sessionScope.user.username}!</h1>
        <%--Settings--%>
        <div class="dropdown d-inline">
            <button class="btn btn-secondary m-2 dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa-solid fa-gear"></i>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="/profile/updatePassword">Update Password</a></li>
                <li><a class="dropdown-item" href="/profile/update">Update Profile</a></li>
            </ul>
        </div>
    </div>
    <%--Main Content--%>
    <main class="py-5">
        <div class="container">
            <div class="row">
                <c:forEach var="ad" items="${ads}">
                    <div class="col-lg-4 col-sm-6 col-12 my-3">
                        <div class="card h-100 p-4" style="background:rgb(247,246,255);border-radius:12px;box-shadow: rgba(0, 0, 0, 0.16) 0 3px 6px, rgba(0, 0, 0, 0.23) 0 3px 6px;">
                            <div class="card-block">
                                <section class="d-flex justify-content-end mb-2">
                                    <a href="/ads/update" class="btn d-inline pl-1"><i class="fa-solid fa-pen-to-square"></i></a>
                                    <a href="/ads/delete" class="btn d-inline pr-1"><i class="fa-solid fa-trash-can"></i></a>
                                </section>
                                <h4 class="card-title text-dark pb-1 pr-5 m-0">${ad.title}</h4>
                                <hr>
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
