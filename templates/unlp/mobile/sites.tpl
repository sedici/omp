<div class="col-md-12 johnny">

    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                       <i class="glyfo glyphicon glyphicon-play"></i> Unidades Academicas
                    </a> 
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body"> 
                    <ul class="listado">
                        {iterate from=browseSeriesList item=browseSeriesItem}
                        <li>
                            <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="unidades" path=$browseSeriesItem->getPath()}"> 
                                {$browseSeriesItem->getLocalizedTitle()|escape}
                            </a>
                        </li>    
                        {/iterate} 
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingTwo">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        <i class="glyfo glyphicon glyphicon-play"></i> Explore nuestras colecciones
                    </a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                <div class="panel-body">

                    <ul class="listadofac">      

                        {assign var="categoriaByLine" value="2"}
                        {assign var="categorias" value="9"}
                        {assign var="div" value=true}

                        {iterate from=browseCategoriesList item=browseCategoryList}
                        {if ($categorias>0) }
                            {if ($div==true)} 
                                 <span class="row">
                                    {assign var="div" value=false}
                                {/if} 
                                    {assign var="category_id" value=$browseCategoryList->getId()}
                                    
                                      <li class="exploracion_mobile col-xs-4">
                                         <img src="/files/presses/1/categories/{$category_id}-category.png" class="center-block imagen_sites" />
                                        <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="category" path=$browseCategoryList->getPath()}">
                                           
                                            <span class="mobile_texto center-block"> {$browseCategoryList->getLocalizedTitle()|escape}</span>
                                            </a>
                                       </li>       
                                {if ($categoriaByLine == 0) }
                                    {assign var="categoriaByLine" value="3"}
                                 </span> 
                                {assign var="div" value=true}
                            {/if}
                            {assign var="categoriaByLine" value=$categoriaByLine-1}
                            {assign var="categorias" value=$categorias-1}
                        {/if} 
                        {/iterate}




                        <!--		
                                        <span class="row">
                                        <li class="exploracion_mobile col-xs-4">
                        <img src="http://163.10.34.211/files/presses/1/categories/16-category.png"class="center-block"></img>
                            <a href="#"><span class="mobile_texto center-block">
                            <span class="mobile_texto">ingenieria y tecnologia</span>
                            </a>
                        </li>       
                <li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/1-category.png"class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias Naturales</span></a></li>    
                <li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/7-category.png"class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias de la salud</span></a></li> 
                </span>-->


                    </ul> 


                </div>
            </div>
        </div>

    </div>
</div>




<div class="col-md-12">
    <h1 class="h1sitios" >Sitios relacionados</h1>
    <div class="col-xs-3">
        <a href="http://sedici.unlp.edu.ar/" target="_blank"><img class="img-responsive" src="/UNLP/images/link_relacionado_01_200.png" width="500" height="175" /></a>
    </div>
    <div class="col-xs-3">
        <a href="http://libros.fahce.unlp.edu.ar/" target="_blank"><img class="img-responsive" src="/UNLP/images/librosfahce.png" width="500" height="190" /></a>
    </div>
    <div class="col-xs-3">
        <a href="http://www.editorial.unlp.edu.ar/" target="_blank"><img class="img-responsive" src="/UNLP/images/link_relacionado_05_200.png" width="500" height="190" /></a>
    </div>
    <div class="col-xs-3">
        <a href="http://prebi.unlp.edu.ar/" target="_blank"><img class="img-responsive" src="/UNLP/images/link_relacionado_03_200.png" width="500" height="153" /></a>
    </div>

</div>

