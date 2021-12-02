package rubiks.cube.tutorial

class ArticleController {

    def index() {
        List<Article> articleList = Article.getAll()
        render(view: "index", model: [articleList: articleList])
    }
}
