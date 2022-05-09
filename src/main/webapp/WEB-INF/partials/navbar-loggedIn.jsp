<%--
  Created by IntelliJ IDEA.
  User: heygilly
  Date: 5/9/22
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%--Navigation--%>
<nav class="navbar container-fluid rounded-0 p-0 m-0 " style="background: rgba(161,234,234,0.35);">
    <div class="container p-0 m-0 ">
        <%-- Navigation Header--%>
        <div class="navbar-header p-0 m-0 ">
            <%--Header--%>
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <%-- Right Side - Login/Logout --%>
        <ul class="nav navbar-nav navbar-right h-100 p-0 m-0 ">
            <%--Add an Ad--%>
            <li><a href="/create" class="p-0 m-0 h-100" title="Create an ad"><span class="h-100 p-0 m-0  glyphicon glyphicon-plus-sign"></span> Create a ad</a></li>
            <%--Logout--%>
            <li class="h-100"><a href="/logout"><span class="h-100 p-0 m-0 glyphicon glyphicon-log-out"></span>Log out</a></li>
        </ul>
    </div>
</nav>