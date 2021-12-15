<%--
  Created by IntelliJ IDEA.
  User: fachrizal
  Date: 12/14/21
  Time: 10:50 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-cms"/>
    <title><g:message code="cms.article.management.show.label" default="Article Details" /></title>
</head>

<body>
    <section aria-label="articleDetails">
        <div class="container">
            <div class="card card-primary mt-5">
                <div class="card-header">
                    <h1 class="card-title"><g:message code="cms.article.management.show.label" default="Article Details" /></h1>
                </div>
                <div class="card-body">
                    <h2><b><g:message code="cms.article.management.title" default="Title" /></b></h2>
                    <h3>${article.title}</h3>
                    <h2><b><g:message code="cms.article.management.image.link" default="Image Link" /></b></h2>
                    <h3>${article.image}</h3>
                    <img src="${article.image}" alt="article image" width="240" height="240">
                    <h2><b><g:message code="cms.article.management.description" default="Description" /></b></h2>
                    <h3>${article.description}</h3>
                    <div class="mt-4">
                         <g:link action="index" class="btn btn-secondary mr-3"><g:message code="cms.article.management.back.button" default="Back" /></g:link>
                         <g:link action="edit" id="${article.id}" class="btn btn-info"><g:message code="cms.article.management.edit.button" default="Edit" /></g:link>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
