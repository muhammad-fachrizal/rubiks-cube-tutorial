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
                                        <button type="button" data-article-id="${article.id}" data-article-title="${article.title}" class="btn btn-sm btn-danger mr-2" data-toggle="modal" data-target="#deleteModal">
                                            <g:message code="cms.article.management.delete.button" default="Delete" />
                                        </button>
                                    </td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                    <!-- Modal -->
                    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModal" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle"><g:message code="cms.article.management.delete.modal.title" default="Delete Article" /></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <g:message code="cms.article.management.delete.modal.body" default="Are you sure to delete " />
                                    <span class="js-modal-body font-weight-bold"></span>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary js-btn-cancel" data-dismiss="modal">
                                        <g:message code="cms.article.management.cancel.button" default="Cancel" />
                                    </button>
                                    <g:link action="delete" data-href="/cms/articleManagement/delete/" class="btn btn-danger text-decoration-none js-delete-modal">
                                        <g:message code="cms.article.management.delete.button" default="Delete" />
                                    </g:link>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Pagination -->
                    <div class="pagination">
                        <g:paginate total="${articleCount}"/>
                    </div>
                </div>
            </div>

        </div>

    </section>
</body>
</html>