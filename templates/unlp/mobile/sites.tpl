<div class="col-md-12 johnny">

    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Unidades Academicas
                    </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body">
                    <ul>
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
                        Explore nuestras colecciones
                    </a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                
                
        {assign var="categoriaByLine" value="4"}
        {assign var="categorias" value="8"}
        {assign var="div" value=true}
        
        {iterate from=$browseCategories item=$browseCategory}

dsds
        {if ($categorias>0) }
            {if ($div==true)} 
                <div class="linea">
                    {assign var="div" value=false}
                {/if} 
                <div class="icon">
                    {assign var="category_id" value=$browseCategory->getId()}
                    <img src="/files/presses/1/categories/{$category_id}-category.png" />
                    <div class="texto_icon">
                        <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="category" path=$browseCategory->getPath()}">
                            {$browseCategory->getLocalizedTitle()|escape}

                        </a>
                    </div>
                </div>
                {if ($categoriaByLine == 0) }
                    {assign var="categoriaByLine" value="4"}
                </div> 
                {assign var="div" value=true}
            {/if}
            {assign var="categoriaByLine" value=$categoriaByLine-1}
            {assign var="categorias" value=$categorias-1}
        {/if} 
        {/iterate}
                
                <div class="panel-body">
                
					<ul>
                                         
						<span class="row">
						<li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/13-category.png" class="center-block"></img> <a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Arte y Arquitectura</span></a></li>      
                        <li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/10-category.png"class="center-block"></img> <a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias Agropecuarias</span></a></li> 
                  		<li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/30-category.png"class="center-block"></img> <a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Comunicacion y medios</span></a></li>      
						</span>
						
						<span class="row">
						<li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/16-category.png"class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">ingenieria y tecnologia</span></a></li>       
                        <li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/1-category.png"class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias Naturales</span></a></li>    
                        <li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/7-category.png"class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias de la salud</span></a></li> 
                        </span>
						
						<span class="row">
						<li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/10-category.png" class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias de la Salud</span></a></li>     
                        <li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/13-category.png"class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Derecho y Ciencias Politicas</span></a></li>
                        <li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/7-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto"><span class="mobile_texto center-block">Viaje de negocios</span></a></li>       
						</span>
						
						<span class="row">
						<li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/1-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto"><span class="mobile_texto center-block">Arreglo de lamparas</span></a></li>  
                        <li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/16-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto"><span class="mobile_texto center-block">Lavado de pies</span></a></li>       
                        <li class="exploracion_mobile col-xs-4"><img src="http://163.10.34.211/files/presses/1/categories/30-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto"><span class="mobile_texto center-block">Ramon</span></a></li>    
                  </span>
                   
					</ul> 
							
					
                </div>
            </div>
        </div>

    </div>
</div>




<div class="col-md-12">
    <h1 class="h1sitios" >Sitios relacionados</h1>
    <div class="col-xs-4">
        <a href="http://sedici.unlp.edu.ar/" target="_blank"><img  src="/UNLP/images/link_relacionado_01_200.png" width="200" height="70" /></a>
    </div>
    <div class="col-xs-4">
        <a href="http://www.editorial.unlp.edu.ar/" target="_blank"><img  src="/UNLP/images/link_relacionado_05_200.png" width="200" height="76" /></a>
    </div>
    <div class="col-xs-4">
        <a href="http://prebi.unlp.edu.ar/" target="_blank"><img src="/UNLP/images/link_relacionado_03_200.png" width="200" height="61" /></a>
    </div>
    <!-- No deber�a ir 
     <div class="col-xs-3">
            <a href="http://www.unlp.edu.ar/" target="_blank"><img class="img-responsive" src="/UNLP/images/link_relacionado_04_200.png" width="200" height="74" /></a>
        </div> -->
</div>

