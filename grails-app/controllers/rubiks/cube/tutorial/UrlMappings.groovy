package rubiks.cube.tutorial

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "homepage", action: "index")
        "/cms/login"(controller: 'login', action: 'auth')
        "/cms/index"(controller: 'cmsTest', action: 'index')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
