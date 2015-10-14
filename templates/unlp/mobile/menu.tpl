<script type="text/javascript">
    $(function () {ldelim}
            $('#topSearchFormField').jLabel();
    {rdelim});
</script>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header col-xs-3">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <form  id="topSearchForm" action="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="results_mobile"}" method="post" class="navbar-form navbar-right col-xs-9" role="search">
            <span class="col-xs-10"><div class="form-group">		
                    <input id="topSearchFormField" name="query" value="{$searchQuery|escape}" type="text" class="form-control" placeholder="Search">
                </div></span>
            <span class="col-xs-2"><button type="submit" class="btn btn-default"><i class="icon-large icon-search"></i></button></span>
        </form>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="{url router=$smarty.const.ROUTE_PAGE page="index" op="index_mobile" }">{translate key="navigation.home"} <span class="sr-only"></span></a></li>
                <li><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">{translate key="navigation.catalog"}</a></li>
                <li class='dropdown'>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Unidades  <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        {iterate from=browseSeriesMenu item=browseSeriesItem_menu}
                        <li>
                            <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="unidades_mobile" path=$browseSeriesItem_menu->getPath()}"> 
                                {$browseSeriesItem_menu->getLocalizedTitle()|escape}
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
                            <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="category_mobile" path=$browseCategoriesItem_menu->getPath()}"> 
                                {$browseCategoriesItem_menu->getLocalizedTitle()|escape}
                            </a>
                        </li>    
                        {/iterate}
                    </ul>
                </li>
            </ul>

            </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

