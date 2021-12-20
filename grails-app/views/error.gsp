<!doctype html>
<html>
    <head>
        <title><g:message code="500.header.label" default="500 Error"/></title>
        <meta name="layout" content="main">
    </head>
    <body>
        <section aria-label="500Error">
            <div class="container">
                <div class="row mt-5">
                    <h1 class="text-danger text-right col-6 c-error-code">
                        <g:message code="500.error.message.number" default="500"/>
                    </h1>
                    <div class="error-content col-6">
                        <h2><i class="fas fa-exclamation-triangle text-danger"></i>
                            <g:message code="500.error.message.label" default="Oops! Something went wrong."/>
                        </h2>
                        <p>
                            <g:message code="500.error.message.description"/>
                            <a href="${createLink(controller: 'homepage')}">
                                <g:message code="500.error.message.return" default="return to homepage."/>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
