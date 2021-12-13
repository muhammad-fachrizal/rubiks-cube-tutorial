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

<body class="hold-transition sidebar-mini">
    <section aria-label="articleList">
        <div class="container">
            <div class="card mt-5">
                <div class="card-header">
                    <h1 class="card-title">
                        <g:message code="cms.article.management.list.label" default="Article List" />
                    </h1>
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
                                    <td><g:link action="show" id="${article.id}">${article.title}</g:link></td>
                                    <td class="o-table-description">${article.description}</td>
                                    <td class="project-actions text-right">
                                            <g:link action="view" id="${article.id}" class="btn btn-sm btn-primary"><g:message code="cms.article.management.view.button" default="View" /></g:link>
                                            &nbsp;
                                            <g:link action="edit" id="${article.id}" class="btn btn-sm btn-info"><g:message code="cms.article.management.edit.button" default="Edit" /></g:link>
                                            &nbsp;
                                            <g:link action="delete" id="${article.id}" class="btn btn-sm btn-danger"><g:message code="cms.article.management.delete.button" default="Delete" /></g:link>

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