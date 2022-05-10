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
            <%--Profile --%>
            <a href="/profile" class="pr-3 text-dark" title="Profile"><i class="fa-solid fa-house-user"></i></a>
            <%--Create a user--%>
            <a href="/ads/create" class="pr-3 text-dark" title="Create an ad"><i class="fa-solid fa-folder-plus"></i></a>
            <%--Login--%>
            <a href="/logout" class="pl-3 text-dark" title="Log Out"><i class="fa-solid fa-right-from-bracket"></i> Log out</a>
        </div>
    </div>
</nav>

