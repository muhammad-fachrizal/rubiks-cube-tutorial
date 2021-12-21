package rubiks.cube.tutorial

import grails.gorm.transactions.Transactional
import grails.web.databinding.DataBindingUtils
import grails.web.servlet.mvc.GrailsParameterMap
import org.springframework.validation.BindingResult
import rubiks.cube.tutorial.cms.ArticleManagementController

import javax.servlet.http.HttpServletRequest

@Transactional
class ArticleManagementService {

    def get(Serializable id) {
        return Article.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Article> articleList = Article.createCriteria().list(params) {
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: articleList, count: articleList.totalCount]
    }

    def save(GrailsParameterMap params, HttpServletRequest request) {
        Article article = new Article(params)
        if(article.validate()) {
            article.save(flush: true)
            if(article.hasErrors()) {
                return [isSuccess:false]
            } else {
                return [isSuccess: true]
            }
        } else {
            return [isSuccess: false, article: article]
        }
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

    def update(Article article, GrailsParameterMap params, HttpServletRequest request) {
        article.properties = params
        if (article.validate()) {
            article.save(flush: true)
            if (!article.hasErrors()){
                return [isSuccess:true]
            } else {
                return [isSuccess: false]
            }
        } else {
            return [isSuccess: false, article: article]
        }
    }
}
