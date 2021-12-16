<%--
  Created by IntelliJ IDEA.
  User: fachrizal
  Date: 12/8/21
  Time: 1:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-cms"/>
    <title><g:message code="cms.article.management.list.label" default="Article List" /></title>
</head>

<body>
    <section aria-label="articleList">
        <div class="container">
            <g:if test="${flash.error}">
                <div class="alert alert-warning alert-dismissible mt-2">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    ${flash.error}
                </div>
            </g:if>
            <g:if test="${flash.message}">
                <div class="alert alert-success alert-dismissible mt-2">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    ${flash.message}
                </div>
            </g:if>
            <div class="card card-primary mt-5">
                <div class="card-header">
                    <h1 class="card-title">
                        <g:message code="cms.article.management.list.label" default="Article List" />
                    </h1>
                    <g:link action="create" class="btn btn-success float-right text-decoration-none"><g:message code="cms.article.management.create.label" default="Create Article" /></g:link>
                </div>
                <div class="card-body p-0">
                    <table class="table table-striped projects">
                        <thead>
                            <tr>
                                <th class="w-25"><g:message code="cms.article.management.title" default="Title" /></th>
                                <th class="w-auto"><g:message code="cms.article.management.description" default="Description" /></th>
                                <th class="w-25 text-right"><g:message code="cms.article.management.action" default="Action" /></th>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${articleList}" status="i" var="article">
                                <tr>
                                    <td class="font-weight-bold">${article.title}</td>
                                    <td class="o-table-description">${article.description}</td>
                                    <td class="project-actions text-right">
                                            <g:link action="show" id="${article.id}" class="btn btn-sm btn-primary mr-2 text-decoration-none"><g:message code="cms.article.management.view.button" default="View" /></g:link>
                                            <g:link action="edit" id="${article.id}" class="btn btn-sm btn-info mr-2 text-decoration-none"><g:message code="cms.article.management.edit.button" default="Edit" /></g:link>
                                            <g:link action="delete" id="${article.id}" class="btn btn-sm btn-danger mr-2 text-decoration-none"><g:message code="cms.article.management.delete.button" default="Delete" /></g:link>

                                    </td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                    <div class="pagination">
                        <g:paginate total="${articleCount}"/>
                    </div>
                </div>
            </div>

        </div>

    </section>
</body>
</html>