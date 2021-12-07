<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-top">
        <div class="container navbar-collapse">
            <ul class="navbar-nav">
                <li>
                    <a class="nav-link" href="${createLink(controller: 'homepage')}">
                        <g:message code="header.home.label" default="Home" />
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="${createLink(controller: 'article')}">
                        <g:message code="header.article.label" default="Article" />
                    </a>
                </li>
                
            </ul>
        </div>
    </nav>
</header>