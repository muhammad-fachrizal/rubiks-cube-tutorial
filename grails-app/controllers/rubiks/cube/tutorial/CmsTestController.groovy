package rubiks.cube.tutorial

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

class CmsTestController {

    @Secured(['IS_AUTHENTICATED_FULLY'])
    def index() {
        render(view: "index")
    }
}
