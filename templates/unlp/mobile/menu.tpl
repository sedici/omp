<nav id="navbar" class="navbar navbar-default navbar-inverse" role="navigation">
   <!-- <div class="container-fluid">-->
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header col-xs-2">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
           <!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">-->
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <form  id="topSearchForm" action="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="results"}" method="post" class="navbar-form navbar-right col-xs-10" role="search">
            <span class="col-xs-10"><div class="form-group">		
                    <input id="topSearchFormField" name="query" value="{$searchQuery|escape}" type="text" class="form-control" placeholder="Buscar">
                </div></span>
            <span class="col-xs-2"><button type="submit" class="btn btn-default"><i class="icon-large icon-search"></i></button></span>
        </form>

        <!-- Collect the nav links, forms, and other content for toggling -->
        
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="{url router=$smarty.const.ROUTE_PAGE page="index" op="index" }">{translate key="navigation.home"} <span class="sr-only"></span></a></li>
                <li><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">Libros</a></li>
                <li class='dropdown'>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Unidades Académicas  <span class="caret"></span></a>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="{$baseUrl}/UNLP/styles/bootstrap/js/bootstrap.js"></script>
