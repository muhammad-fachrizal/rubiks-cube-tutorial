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
    <section aria-label="articleEdit">
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h1 class="card-title"><g:message code="cms.article.management.edit.label" default="Article Edit" /></h1>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <g:uploadForm action="update" id="${article.id}">
                                <div class="form-group">
                                    <label for="title"><g:message code="cms.article.management.title" default="Title" /></label>
                                    <input type="text" id="title" name="title" class="form-control" value="${article.title}" required>
                                </div>
                                <div class="form-group">
                                    <label for="image"><g:message code="cms.article.management.image.link" default="Image Link" /></label>
                                    <input type="text" id="image" name="image" class="form-control" value="${article.image}" required>
                                </div>
                                <div class="form-group">
                                    <label for="summernote-description"><g:message code="cms.article.management.description" default="Description" /></label>
                                    <textarea id="summernote-description" name="description" class="form-control" data-description-value="${article.description}" required></textarea>
                                </div>
                                <div class="col-12">
                                    <a href="${createLink(action: 'index', controller: 'articleManagement')}" id="btnCancel" class="btn btn-secondary"><g:message code="cms.article.management.cancel.button" default="Cancel" /></a>
                                    <input type="submit" id="btnSave" value="<g:message code="cms.article.management.save.changes.button" default="Save Changes" />" class="btn btn-success float-right">
                                </div>
                            </g:uploadForm>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>