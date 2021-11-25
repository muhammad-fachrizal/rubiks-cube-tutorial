<section aria-label="slideshow">
    <div id="carouselHomepage" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselHomepage" data-slide-to="0" class="active"></li>
            <li data-target="#carouselHomepage" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="img-slider" style="background-image: url('${resource(dir: "/../assets/homepage", file: "rubiks-cube-slideshow-1.jpg")}');"></div>
            </div>
            <div class="carousel-item">
                <div class="img-slider" style="background-image: url('${resource(dir: "/../assets/homepage", file: "rubiks-cube-slideshow-2.png")}');"></div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselHomepage" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        </a>
        <a class="carousel-control-next" href="#carouselHomepage" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
        </a>
    </div>
</section>