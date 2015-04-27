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
            <a href="http://sedici.unlp.edu.ar/" target="_blank"><img src="/UNLP/images/link_relacionado_01_200.png" width="200" height="70" /></a>
            <a href="https://pkp.sfu.ca/" target="_blank"><img src="/UNLP/images/link_relacionado_02_200.png" width="200" height="70" /></a>
            <a href="http://prebi.unlp.edu.ar/" target="_blank"><img src="/UNLP/images/link_relacionado_03_200.png" width="200" height="61" /></a>
            <a href="http://www.unlp.edu.ar/" target="_blank"><img src="/UNLP/images/link_relacionado_04_200.png" width="200" height="74" /></a>
            <a href="http://www.editorial.unlp.edu.ar/" target="_blank"><img src="/UNLP/images/link_relacionado_05_200.png" width="200" height="76" /></a></div>

    </div>
</div>
<div class="col_secundaria">
    <div class="busqueda">
        <div class="titulo">Busque el libro que desea</div>
        <div class="subtitulo"></div>
        <div class="barra_">
            {include file="header/search.tpl"}
            <!--<div class="barrita"></div>
                <div class="lupita"></div>
            -->
        </div>
    </div>

    <div class="areas_tematicas">
        <div class="rotulo">Explore nuestras colecciones </div>

        {$categoriaByLine = 4} 
        {$div = true} 
        {iterate from=browseCategories item=browseCategory}

        {if $div} 
            <div class="linea">
                {$div = false} 
            {/if} 
            <div class="icon"><img src="/UNLP/images/icono_area.png" />
                <div class="texto_icon">
                    <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="category" path=$browseCategory->getPath()}">
                        {$browseCategory->getLocalizedTitle()|escape}</a>
                </div>
            </div>
            {if $categoriaByLine = 0} 
                {$categoriaByLine = 4}
            </div> 
            {$div = true} 
        {/if}
        {$categoriaByLine = $categoriaByLine-1}  
        {/iterate}
    </div>
</div>
{literal}
    <script>
        $(function () {
            $('#carousel').infiniteCarousel({
                imagePath: '/UNLP/images/',
                transitionSpeed: 300,
                displayTime: 6000,
                internalThumbnails: false,
                thumbnailType: 'numbers',
                customClass: 'myCarousel',
                progressRingColorOpacity: '0,0,0,.9',
                progressRingBackgroundOn: false,
                easeLeft: 'easeOutExpo',
                easeRight: 'easeOutQuart',
                inView: 1,
                advance: 1,
                autoPilot: false,
                prevNextInternal: false,
                autoHideCaptions: true
            });


        });
    </script>
{/literal}
{include file="common/footer.tpl"}
