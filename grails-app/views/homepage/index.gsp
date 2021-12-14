<%--
  Created by IntelliJ IDEA.
  User: fachrizal
  Date: 11/25/21
  Time: 7:30 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="header.title.label" default="Rubik's Cube for Beginners"/></title>
</head>

<body>
<section aria-label="homepage">
    <g:render template="slideshow"/>
    <div class="container">
        <g:render template="introduction"/>
        <g:render template="instruction"/>
    </div>
</section>
</body>
</html>