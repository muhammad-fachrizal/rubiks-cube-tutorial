package rubiks.cube.tutorial

import grails.plugin.springsecurity.annotation.Secured

class HomepageController {

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def index() {
        render(view: "index")
    }
}
