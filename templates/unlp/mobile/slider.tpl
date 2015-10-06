<div class="col-md-12">
    
    
    {* Include the carousel view of featured content *}
{*    {url|assign:carouselUrl router=$smarty.const.ROUTE_COMPONENT component="carousel.CarouselHandler" op="fetch" escape=false}
{load_url_in_div id="carousel" url=$carouselUrl}
*}
    
  <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
  <!-- Indicators -->
  
<!--   <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol> -->
  <div class="carousel-inner">
    <div class="item active"> <img src="/UNLP/images/slider_2.png" style="width:100%" alt="First slide">
      <div class="container">
        <div class="carousel-caption">
          <a href="@"><h1>El segundo manifiesto</h1></a>
          <p><a href="lala">El espectacularisimo libro de Ferchu</a></p>
          <p></p>
        </div>
      </div>
    </div>
    
  </div>
  <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> </div>
  
    
   
</div>    