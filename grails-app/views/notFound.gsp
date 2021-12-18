<!doctype html>
<html>
    <head>
        <title><g:message code="404.header.label" default="Page Not Found"/></title>
        <meta name="layout" content="main">
    </head>
    <body>
        <section aria-label="404Page">
            <div class="container">
                <div class="row mt-5">
                    <h1 class="text-warning text-right col-6 c-error-code">
                        <g:message code="404.error.message.number" default="404"/>
                    </h1>
                    <div class="error-content col-6">
                        <h2><i class="fas fa-exclamation-triangle text-warning"></i>
                            <g:message code="404.error.message.label" default="Oops! Page not found."/>
                        </h2>
                        <p>
                            <g:message code="404.error.message.description"/>
                            <a href="${createLink(controller: 'homepage')}">
                                <g:message code="404.error.message.return" default="return to homepage."/>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
