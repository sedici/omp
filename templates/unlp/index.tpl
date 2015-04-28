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


<div id="col_principal">

<div id="destacado">
<h1> Desastres Naturales</h1>
<div class="portada"><img src="portada_thumb.png" width="100" height="132" /></div>
<div class="detalle">

<div class="detalles_del_item">
<ul><li><strong>Autor</strong> Alejandra Natalia Araya Espinoza,<br />
  Ariadna Tal&iacute;a Biotti Silva, Juan Guillermo Prado Ocaranza</li>
<li><strong>Lugar de publicaci&oacute;n</strong> Chile</li>
<li><strong>Editorial</strong> Universidad de Chile, Archivo Central Andr&eacute;s Bello </li>
<li><strong>ISBN</strong> 9789561908246</li>
<li style="list-style-type:none;"><div class="estrellas"></div></li>
</ul>

</div>


</div>
</div>

<div class="resena">
<h1>Reseña</h1>
<p>Morbi pharetra tincidunt posuere. Quisque feugiat sed arcu gravida ultricies. Aliquam erat volutpat. Quisque tempor nunc in tellus sodales pulvinar. Vivamus rhoncus lectus id enim convallis ultrices. Ut magna tortor, euismod in tortor ut, tempus molestie est. Etiam porttitor faucibus hendrerit. Sed euismod, erat eget porttitor condimentum, tellus leo lacinia augue, id consectetur tellus metus eu lectus. Fusce efficitur quam metus, id finibus elit mattis eget. Quisque convallis odio quis nulla elementum, eget facilisis nisi sagittis. Phasellus efficitur at dolor non semper. Phasellus nec facilisis nisi.</p>
</div>
<div class="contenidos">
<h1>Tabla de contenidos </h1>
<ul>
  <li>T&iacute;tulo</li>
  <li>Introducción</li>
<li>Capitulo 1</li>
<li>Capítulo 2</li>
<li>Capítulo 3</li>
</ul>
</div>

</div>

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
            {include file="unlp/search.tpl"}
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
{include file="common/footer.tpl"}
