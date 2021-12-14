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

    def edit(Long id) {
        def response = articleManagementService.get(id)
        if (!response){
            flash.error = 'Invalid Entity!'
            redirect(controller: "ArticleManagement", action: "index")
        }else{
            render(view: "/cms/articleManagement/edit", model:[article: response])
        }
    }

    def update() {
        def response = articleManagementService.get(params.id)
        if (!response){
            flash.error = 'Invalid Entity ID!'
            redirect(controller: "ArticleManagement", action: "index")
        }else{
            def resp = articleManagementService.update(response, params, request)
            if (!resp.isSuccess){
                flash.message = 'Invalid Update!'
                redirect(controller: "ArticleManagement", action: "index")
            }else{
                flash.message = 'Update success!'
                redirect(controller: "ArticleManagement", action: "index")
            }
        }
    }

    def show(Long id) {
        def response = articleManagementService.get(id)
        if (!response){
            flash.error = 'Invalid Entity!'
            redirect(controller: "ArticleManagement", action: "index")
        }else{
            render(view: "/cms/articleManagement/show", model:[article: response])
        }
    }
}
