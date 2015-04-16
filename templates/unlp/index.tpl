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
<style>
div.ic_myCarousel {
	margin: 20px auto 0 auto;
	clear:right;
}
.ic_myCarousel .ic_button {
	float: left;
	height: 40px;
	line-height: 40px;
	margin: 0 4px 0 2px;
	width: 40px;
	border: 1px solid #eee;
	background: #ddd;
}
.ic_thumbnails {
	display: inline-block;
	font: bold 14px Arial, sans-serif;
}
div.ic_myCarousel2 .infiniteCarousel {
	-moz-border-radius: 20px;
	border-radius: 20px;
	box-shadow: 0px 0px 8px #333;
}


/* keep this after the ic_button code for proper border coloring */		
.ic_myCarousel .ic_active  {
	background: #fff;
	border: 1px solid #faa;
}
.ic_caption {
	opacity: .6;
	background: #fff;
	font-size: 12px;
	font-family: arial;
	padding: 4px 8px;
	width: auto;
}

div p {
    color: #333333;
    font-family: "Trebuchet MS", Verdana, Arial, sans-serif;
    font-size: 18px;
    text-shadow: 0 1px 1px #C9C9C9;
}
.options {
	font-size: 16px;
}
</style>


<div class="col_principal">



    {* Include the carousel view of featured content *}
    {*  {url|assign:carouselUrl router=$smarty.const.ROUTE_COMPONENT component="carousel.CarouselHandler" op="fetch" escape=false}
    {load_url_in_div id="carousel" url=$carouselUrl}
    *}
    
    <ul id="carousel">
	<li><div class="destacado">
                    <div class="portada"><img src="/UNLP/images/portada_libro.png" /></div>
                    <div class="detalle">

                        <div class="detalles_del_item">
                            <h2>Título destaqueited</h2>
                            <h1> Desastres Naturales</h1>
                            <ul><li><strong>Autor</strong> Alejandra Natalia Araya Espinoza,<br />
                                    Ariadna Tal&iacute;a Biotti Silva, Juan Guillermo Prado Ocaranza</li>
                                <li><strong>Lugar de publicaci&oacute;</strong>n Chile</li>
                                <li><strong>Editorial</strong> Universidad de Chile, Archivo Central Andr&eacute;s Bello </li>
                                <li><strong>ISBN</strong> 9789561908246</li></ul>

                        </div>
                    </div>
                </div></li>
	<li><div class="destacado">
                    <div class="portada"><img src="/UNLP/images/portada_libro.png" /></div>
                    <div class="detalle">

                        <div class="detalles_del_item">
                            <h2>Título destaqueited</h2>
                            <h1> Desastres Naturales</h1>
                            <ul><li><strong>Autor</strong> Alejandra Natalia Araya Espinoza,<br />
                                    Ariadna Tal&iacute;a Biotti Silva, Juan Guillermo Prado Ocaranza</li>
                                <li><strong>Lugar de publicaci&oacute;</strong>n Chile</li>
                                <li><strong>Editorial</strong> Universidad de Chile, Archivo Central Andr&eacute;s Bello </li>
                                <li><strong>ISBN</strong> 9789561908246</li></ul>

                        </div>
                    </div>
                </div></li>
	<li><div class="destacado">
                    <div class="portada"><img src="/UNLP/images/portada_libro.png" /></div>
                    <div class="detalle">

                        <div class="detalles_del_item">
                            <h2>Título destaqueited</h2>
                            <h1> Desastres Naturales</h1>
                            <ul><li><strong>Autor</strong> Alejandra Natalia Araya Espinoza,<br />
                                    Ariadna Tal&iacute;a Biotti Silva, Juan Guillermo Prado Ocaranza</li>
                                <li><strong>Lugar de publicaci&oacute;</strong>n Chile</li>
                                <li><strong>Editorial</strong> Universidad de Chile, Archivo Central Andr&eacute;s Bello </li>
                                <li><strong>ISBN</strong> 9789561908246</li></ul>

                        </div>
                    </div>
                </div></li>
	<li><div class="destacado">
                    <div class="portada"><img src="/UNLP/images/portada_libro.png" /></div>
                    <div class="detalle">

                        <div class="detalles_del_item">
                            <h2>Título destaqueited</h2>
                            <h1> Desastres Naturales</h1>
                            <ul><li><strong>Autor</strong> Alejandra Natalia Araya Espinoza,<br />
                                    Ariadna Tal&iacute;a Biotti Silva, Juan Guillermo Prado Ocaranza</li>
                                <li><strong>Lugar de publicaci&oacute;</strong>n Chile</li>
                                <li><strong>Editorial</strong> Universidad de Chile, Archivo Central Andr&eacute;s Bello </li>
                                <li><strong>ISBN</strong> 9789561908246</li></ul>

                        </div>
                    </div>
                </div></li>
    </ul>
    
    
         
          
           
        {foreach from=$publishedMonographs item=publishedMonograph}
            {assign var="submissionId" value=$publishedMonograph->getId()}
            {if isset($featuredMonographIds[$submissionId])}
                <div class="destacado">
                    <div class="portada"><img src="/UNLP/images/portada_libro.png" /></div>
                    <div class="detalle">

                        <div class="detalles_del_item">
                            <h2>Título destaqueited</h2>
                            <h1> Desastres Naturales</h1>
                            <ul><li><strong>Autor</strong> Alejandra Natalia Araya Espinoza,<br />
                                    Ariadna Tal&iacute;a Biotti Silva, Juan Guillermo Prado Ocaranza</li>
                                <li><strong>Lugar de publicaci&oacute;</strong>n Chile</li>
                                <li><strong>Editorial</strong> Universidad de Chile, Archivo Central Andr&eacute;s Bello </li>
                                <li><strong>ISBN</strong> 9789561908246</li></ul>

                        </div>
                    </div>
                </div>
            {/if}
        {/foreach}
        <div class="exploracion">
            <div class="explo_unidades">
                <div class="rotulo">Unidades </div>
                <ul>
                    {iterate from=browseSeries item=browseSeriesItem}
                     <li><a href='catalog/series/{$browseSeriesItem->getPath()|escape}'>{$browseSeriesItem->getLocalizedTitle()|escape}</a></li>    
                 
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
                          <a href='{$browseCategory->getPath()|escape}'>{$browseCategory->getLocalizedTitle()|escape}</a>
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
$(function(){
	$('#carousel').infiniteCarousel({
		imagePath: '/UNLP/images/',
		transitionSpeed:300,
		displayTime: 6000,
		internalThumbnails: false,
		thumbnailType: 'numbers',
		customClass: 'myCarousel',
		progressRingColorOpacity: '0,0,0,.9',
		progressRingBackgroundOn: false,
		easeLeft: 'easeOutExpo',
		easeRight:'easeOutQuart',
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
