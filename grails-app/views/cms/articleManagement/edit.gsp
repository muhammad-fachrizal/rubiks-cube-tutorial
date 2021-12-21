<%--
  Created by IntelliJ IDEA.
  User: fachrizal
  Date: 12/12/21
  Time: 4:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-cms"/>
    <title><g:message code="cms.article.management.edit.label" default="Article Edit" /></title>
</head>

<body>
    <section aria-label="editArticle">
        <div class="container">
            <g:if test="${flash.error}">
                <div class="alert alert-warning alert-dismissible mt-2">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    ${flash.error}
                </div>
            </g:if>
            <div class="card card-primary mt-5">
                <div class="card-header">
                    <h1 class="card-title"><g:message code="cms.article.management.edit.label" default="Article Edit" /></h1>
                </div>
                <div class="card-body">
                    <g:uploadForm action="update" id="${article.id}" class="js-form">
                        <div class="form-group">
                            <label for="title"><g:message code="cms.article.management.title" default="Title" /></label>
                            <input type="text" id="title" name="title" class="form-control" value="${article.title}" required>
                        </div>
                        <div class="form-group">
                            <label for="image"><g:message code="cms.article.management.image.link" default="Image Link" /></label>
                            <input type="url" id="image" name="image" class="form-control" value="${article.image}" required>
                        </div>
                        <div class="form-group">
                            <label for="summernote-description"><g:message code="cms.article.management.description" default="Description" /></label>
                            <textarea id="summernote-description" name="description" class="form-control" data-empty-description="Please fill out Description field">${article.description}</textarea>
                        </div>
                        <div class="col-12">
                            <a href="${createLink(action: 'index', controller: 'articleManagement')}" id="btnCancel" class="btn btn-secondary text-decoration-none"><g:message code="cms.article.management.cancel.button" default="Cancel" /></a>
                            <input type="submit" id="btnSave" value="<g:message code="cms.article.management.save.changes.button" default="Save Changes" />" class="btn btn-success float-right">
                        </div>
                    </g:uploadForm>
                </div>
            </div>
        </div>
    </section>
</body>
</html>