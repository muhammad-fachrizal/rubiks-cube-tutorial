<%--
  Created by IntelliJ IDEA.
  User: fachrizal
  Date: 12/1/21
  Time: 4:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="header.article.label" default="Article"/></title>
</head>

<body>
    <section aria-label="article">
        <div class="container">
            <section aria-label="article" class="section-popular">
                <div class="container">
                    <div class="row o-cards mt-5">
                        <g:each in="${articleList}" var="article">
                            <div class="col-lg-3">
                                <div class="card c-card position-relative">
                                    <div class="card-img-top c-img-article" style="background-image: url('${article.image}')"></div>
                                    <div class="card-body">
                                        <div class="o-text-article">
                                            <p class="card-title" ><b>${article.title}</b></p><br>
                                            <div class="card-text">
                                                ${raw(article.description)}
                                            </div>
                                            <a class="stretched-link btn" href="#"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </g:each>
                    </div>
                </div>
            </section>
        </div>
    </section>
</body>
</html>