<nav id="navbar" class="navbar navbar-default navbar-inverse" role="navigation">
    <!-- id= //mainmenuBrand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>  
    </div>

    <div  class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav" >
            <li id="home"><a href="http://revistas.unlp.edu.ar//index">Inicio</a></li>
            <li id="about"><a href="http://revistas.unlp.edu.ar//about">Acerca de</a></li>

            <li id="login"><a href="http://revistas.unlp.edu.ar//login">Iniciar sesión</a></li>
            <li id="register"><a href="http://revistas.unlp.edu.ar//user/register">Registrarse</a></li>
            <li id="search"><a href="http://revistas.unlp.edu.ar//search">Buscar</a></li>




        </ul>
    </div>
</nav>






<nav id="navbar" class="navbar navbar-default navbar-inverse" role="navigation">
   <!-- <div class="container-fluid">-->
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
           <!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">-->
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <form  id="topSearchForm" action="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="results"}" method="post" class="navbar-form navbar-right col-xs-9" role="search">
            <span class="col-xs-10"><div class="form-group">		
                    <input id="topSearchFormField" name="query" value="{$searchQuery|escape}" type="text" class="form-control" placeholder="Buscar">
                </div></span>
            <span class="col-xs-2"><button type="submit" class="btn btn-default"><i class="icon-large icon-search"></i></button></span>
        </form>

        <!-- Collect the nav links, forms, and other content for toggling -->
        
        <div class="collapse navbar-collapse navbar-ex1-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="{url router=$smarty.const.ROUTE_PAGE page="index" op="index" }">{translate key="navigation.home"} <span class="sr-only"></span></a></li>
                <li><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">Libros</a></li>
                <li class='dropdown'>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Unidades  <span class="caret"></span></a>
                    <ul class="dropdown-menu">

                        {iterate from=browseSeriesMenu item=browseSeriesItemMenu}
                        <li>
                            <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="unidades" path=$browseSeriesItemMenu->getPath()}"> 
                                {$browseSeriesItemMenu->getLocalizedTitle()|escape}
                            </a>
                        </li>    
                        {/iterate}
                    </ul>
                </li>
                <li class='dropdown'>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Areas Temáticas  <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        {iterate from=browseCategoriesMenu item=browseCategoriesItem_menu}
                        <li>
                            <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="category" path=$browseCategoriesItem_menu->getPath()}"> 
                                {$browseCategoriesItem_menu->getLocalizedTitle()|escape}
                            </a>
                        </li>    
                        {/iterate}
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
   <!-- </div> --><!-- /.container-fluid -->
</nav>
