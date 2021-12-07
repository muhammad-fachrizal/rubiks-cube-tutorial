package rubiks.cube.tutorial

import grails.plugin.springsecurity.annotation.Secured

class ArticleController {

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def index() {
        List<Article> articleList = Article.getAll()
        render(view: "index", model: [articleList: articleList])
    }
}
