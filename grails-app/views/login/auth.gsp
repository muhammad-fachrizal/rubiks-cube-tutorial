<%--
  Created by IntelliJ IDEA.
  User: fachrizal
  Date: 12/7/21
  Time: 11:37 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-cms"/>
    <title><g:message code="cms.login.label" default="Login"/></title>
</head>

<body class="hold-transition login-page">
    <section aria-label="cmsLogin">
        <div class="container">
            <div class="login-box mx-auto my-5">
                <div class="card card-outline card-primary">
                    <div class="card-header text-center">
                        <h1><b><g:message code="cms.admin.label" default="Admin"/></b><g:message code="cms.lte.label" default="LTE" /></h1>
                        <div class="login-card-body">
                            <p class="login-box-msg"><g:message code="cms.login.description.label" default="Sign in to start your session" /></p>
                            <g:if test='${flash.message}'>
                                <div class="alert alert-danger" role="alert">${flash.message}</div>
                            </g:if>
                            <form class="form-signin" action="${postUrl ?: '/login/authenticate'}" method="POST">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="username" id="username" autocapitalize="none" placeholder="<g:message code="cms.login.username.placeholder" default="Username"/>">
                                </div>
                                <div class="input-group mb-3">
                                    <input type="password" class="form-control" name="password" id="password" placeholder="<g:message code="cms.login.password.placeholder" default="Password"/>">
                                </div>
                                <button id="submit" type="submit" class="btn btn-primary btn-block"><g:message code="cms.login.submit.button" default="Log In" /></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>