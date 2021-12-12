package rubiks.cube.tutorial

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ArticleManagementService {

    def get(Serializable id) {
        return Article.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Article> articleList = Article.createCriteria().list(params) {
            if (!params.sort) {
                order("id", "asc")
            }
        }
        return [list: articleList, count: articleList.totalCount]
    }

    def delete(Article article) {
        try {
            article.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
