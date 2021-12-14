<!doctype html>
<html>
    <head>
        <title><g:message code="404.header.label" default="Page Not Found"/></title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>
        <ul class="errors">
            <li><g:message code="404.error.message.label" default="Error: Page Not Found (404)"/></li>
            <li><g:message code="404.path.label" default="Path: "/> ${request.forwardURI}</li>
        </ul>
    </body>
</html>
