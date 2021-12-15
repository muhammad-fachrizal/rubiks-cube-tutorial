package rubiks.cube.tutorial

class UrlMappings {

    static mappings = {
        "/"(controller: "homepage", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')

        "/homepage"(controller: "homepage", action: "index")
        "/article"(controller: "article", action: "index")

        "/login/$action?"(controller: 'login')
        "/logout/$action?"(controller: "logout")

        group "/cms", {
            "/login"(controller: "login", action: "auth")
            "/"(controller: "articleManagement", action: "index")
            "/articleManagement"(controller: "articleManagement", action: "index")
            "/articleManagement/$action?/$id?"(controller: "articleManagement")
        }
    }
}
