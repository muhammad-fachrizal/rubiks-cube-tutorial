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
            redirect(uri: "/cms/articleManagement")
        }else{
            response = articleManagementService.delete(response)
            if (!response){
                flash.message = 'Unable to Delete'
            }else{
                flash.message = 'Article has been deleted'
            }
            redirect(uri: "/cms/articleManagement")
        }
    }

    def edit(Long id) {
        def response = articleManagementService.get(id)
        if (!response){
            flash.error = 'Invalid Entity!'
            redirect(uri: "/cms/articleManagement")
        }else{
            render(view: "/cms/articleManagement/edit", model:[article: response])
        }
    }

    def update() {
        def response = articleManagementService.get(params.id)
        if (!response){
            flash.error = 'Invalid Entity ID!'
            redirect(uri: "/cms/articleManagement")
        }else{
            def resp = articleManagementService.update(response, params, request)
            if (!resp.isSuccess){
                flash.message = 'Invalid Update!'
                redirect(uri: "/cms/articleManagement")
            }else{
                flash.message = 'Update success!'
                redirect(uri: "/cms/articleManagement")
            }
        }
    }

    def show(Long id) {
        def response = articleManagementService.get(id)
        if (!response){
            flash.error = 'Invalid Entity!'
            redirect(uri: "/cms/articleManagement")
        }else{
            render(view: "/cms/articleManagement/show", model:[article: response])
        }
    }
}
