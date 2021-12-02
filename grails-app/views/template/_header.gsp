<header>
    <nav class="navbar navbar-dark bg-primary fixed-top">
        <div class="container">
            <a class="nav-link" href="${createLink(controller: 'homepage')}">
                <g:message code="header.home.label" default="Home" />
            </a>
            <a class="nav-link" href="${createLink(controller: 'article')}">
                <g:message code="header.article.label" default="Article" />
            </a>
        </div>
    </nav>
</header>