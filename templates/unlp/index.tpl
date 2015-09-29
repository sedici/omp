{**
* templates/index/press.tpl
*
* Copyright (c) 2014 Simon Fraser University Library
* Copyright (c) 2003-2014 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Press index page.
*}



{strip}
    {include file="common/header.tpl" suppressPageTitle=true}
{/strip}




<div class="col_principal">
    {* Include the carousel view of featured content *}
    {url|assign:carouselUrl router=$smarty.const.ROUTE_COMPONENT component="carousel.CarouselHandler" op="fetch" escape=false}
    {load_url_in_div id="carousel" url=$carouselUrl}

    <div class="exploracion">
        <div class="explo_unidades">
            <div class="rotulo">Unidades </div>
            <ul>
                {iterate from=browseSeries item=browseSeriesItem}
                <li>
                    <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="unidades" path=$browseSeriesItem->getPath()}"> 
                        {$browseSeriesItem->getLocalizedTitle()|escape}</a></li>    
                        {/iterate}
            </ul>
        </div>
        <div class="links_relacionados">
            <div class="rotulo">Sitios relacionados</div>
            {include file="unlp/linkRelaciones.tpl"}
        </div>
    </div> 
</div>
<div class="col_secundaria">
    <div class="busqueda">
        <div class="titulo">Busque el libro que desea</div>
        <div class="subtitulo"></div>
        <div class="barra_">
            {include file="unlp/search.tpl"}
        </div>
    </div>

    <div class="areas_tematicas">
        <div class="rotulo">Explore nuestras colecciones </div>


        {assign var="categoriaByLine" value="3"}
        {assign var="categorias" value="8"}
        {assign var="div" value=true}
        {iterate from=browseCategories item=browseCategory}


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

        <a href="{url op="category" page='catalog'}" style="color:white; float: left; clear: left; background-color: #3db8c1;  padding:3px; text-decoration:none">Ver Más</a>
    </div>
</div>
{strip}
    {include file="unlp/mobile/layout.tpl" suppressPageTitle=true browseSeries=$browseSeries browseCategories=$browseCategories }
{/strip}
