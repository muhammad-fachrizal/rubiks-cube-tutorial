<header>
    <nav class="navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav ml-5">
            <li class="nav-item d-none d-sm-inline-block">
                <a href="${createLink(controller: 'articleManagement', action: 'index')}" class="nav-link">
                    <g:message code="header.article.label" default="Article" />
                </a>
            </li>
        </ul>
        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            <sec:ifLoggedIn>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        <sec:loggedInUserInfo field='username'/>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <g:form controller="logout">
                            <g:submitButton class="dropdown-item color-light" name="Submit" value="Logout"/>
                        </g:form>
                    </div>
                </li>
            </sec:ifLoggedIn>
        </ul>
    </nav>
</header>