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

    def create() {
        render(view: "/cms/articleManagement/create")
    }

    def save() {
        def response = articleManagementService.save(params, request)
        if (response.isSuccess){
            flash.message = g.message(code: 'cms.article.management.save.success.message') as Object
            redirect(controller: "articleManagement", action: "index")
        }else{
            flash.error = g.message(code: 'cms.article.management.save.fail.error') as Object
            render(view: "/cms/articleManagement/create", model: [article: response.article])
        }
    }

    def delete(Long id) {
        def response = articleManagementService.get(id)
        if (!response){
            flash.error = g.message(code: 'cms.article.management.invalid.id.error') as Object
            redirect(controller: "articleManagement", action: "index")
        }else{
            response = articleManagementService.delete(response)
            if (!response){
                flash.error = g.message(code: 'cms.article.management.delete.fail.error') as Object
            }else{
                flash.message = g.message(code: 'cms.article.management.delete.success.message') as Object
            }
            redirect(controller: "articleManagement", action: "index")
        }
    }

    def edit(Long id) {
        def response = articleManagementService.get(id)
        if (!response){
            flash.error = g.message(code: 'cms.article.management.invalid.id.error') as Object
            redirect(controller: "articleManagement", action: "index")
        }else{
            render(view: "/cms/articleManagement/edit", model:[article: response])
        }
    }

    def update() {
        def response = articleManagementService.get(params.id)
        if (!response){
            flash.error = g.message(code: 'cms.article.management.invalid.id.error') as Object
            redirect(controller: "articleManagement", action: "index")
        }else{
            def resp = articleManagementService.update(response, params, request)
            if (!resp.isSuccess){
                flash.error = g.message(code: 'cms.article.management.update.fail.error') as Object
                render(view: "/cms/articleManagement/edit", model: [article: resp.article])
            }else{
                flash.message = g.message(code: 'cms.article.management.update.success.message') as Object
                redirect(controller: "articleManagement", action: "index")
            }
        }
    }

    def show(Long id) {
        def response = articleManagementService.get(id)
        if (!response){
            flash.error = g.message(code: 'cms.article.management.invalid.id.error') as Object
            redirect(controller: "articleManagement", action: "index")
        }else{
            render(view: "/cms/articleManagement/show", model:[article: response])
        }
    }
}
