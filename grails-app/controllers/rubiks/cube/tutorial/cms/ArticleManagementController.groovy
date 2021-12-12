package rubiks.cube.tutorial.cms

import grails.plugin.springsecurity.annotation.Secured
import rubiks.cube.tutorial.ArticleManagementService

@Secured(['IS_AUTHENTICATED_FULLY'])
class ArticleManagementController{
    ArticleManagementService articleManagementService

    def index() {
        def response = articleManagementService.list(params)
        render(view: "/cms/articleManagement/index", model: [articleList: response.list, articleCount:response.count])
    }

    def delete(Long id) {
        def response = articleManagementService.get(id)
        if (!response){
            flash.error = 'Invalid Entity!'
            redirect(controller: "ArticleManagement", action: "index")
        }else{
            response = articleManagementService.delete(response)
            if (!response){
                flash.message = 'Unable to Delete'
            }else{
                flash.message = 'Article has been deleted'
            }
            redirect(controller: "ArticleManagement", action: "index")
        }
    }
}
