<%--
  Created by IntelliJ IDEA.
  User: fachrizal
  Date: 12/7/21
  Time: 11:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:message code="header.title.label" />
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body class="en" data-direction="ltr" data-template="default">
    <g:render template="/template/header-cms"/>
    <div class="root">
        <main>
            <g:layoutBody/>
        </main>
    </div>
    <asset:javascript src="application.js"/>
</body>
</html>