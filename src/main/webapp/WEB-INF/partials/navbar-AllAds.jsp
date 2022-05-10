<%--Navigation--%>
<nav class="navbar container-fluid" style="background: rgb(247,246,255);">
    <div class="container">
        <%-- Navigation Header--%>
        <div class="navbar-header">
            <%--Header--%>
            <a class="navbar-brand text-dark text-uppercase" style="font-weight:800"; title="Adlister" href="/ads">Adlister</a>
        </div>
        <%-- Right Side - Login/Logout --%>
        <div class="nav navbar-nav navbar-right d-flex flex-row align-items-center">
            <%--Create a user--%>
            <a href="/register" class="pr-3 text-dark" title="Create a user"><i class="fa-solid fa-user-plus"></i> Create a User</a>
            <%--Login--%>
            <a href="/profile" class="pl-3 text-dark" title="Profile"><i class="fa-solid fa-house"></i> Profile</a>
        </div>
    </div>
</nav>
