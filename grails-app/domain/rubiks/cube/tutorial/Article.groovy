package rubiks.cube.tutorial

class Article extends BaseDomain {
    private static final long serialVersionUID = 1
    String title
    String image
    String description

    static constraints = {
        title nullable: false
        image nullable: false
        description nullable: false
    }

    static mapping = {
        description type: "text"
    }
}
