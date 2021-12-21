package rubiks.cube.tutorial

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class HomepageController {

    def index() {
        render(view: "index")
    }
}
