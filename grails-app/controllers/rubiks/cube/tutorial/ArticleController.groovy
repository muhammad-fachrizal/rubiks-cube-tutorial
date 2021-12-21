package rubiks.cube.tutorial

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class ArticleController extends BaseDomain {
    private static final long serialVersionUID = 1


    def index() {
        List<Article> articleList = Article.getAll()
        render(view: "index", model: [articleList: articleList])
    }
}
