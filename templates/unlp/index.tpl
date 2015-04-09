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
    {*  {url|assign:carouselUrl router=$smarty.const.ROUTE_COMPONENT component="carousel.CarouselHandler" op="fetch" escape=false}
    {load_url_in_div id="carousel" url=$carouselUrl}
    *}
    <div id="wrap" class="carrusel-portada gris rondedbox">  
        <ul id="mycarousel" class="jcarousel-skin-tango">
           {foreach from=$publishedMonographs item=publishedMonograph}ddd
            {assign var="submissionId" value=$publishedMonograph->getId()}
              <li>
               <div class="destacado">
                    <div class="portada"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=362" 
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
              </li>
           
        {/foreach}
          
           
        </ul>

    </div>
        {foreach from=$publishedMonographs item=publishedMonograph}ddd
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
                        <li>{$browseSeriesItem->getLocalizedTitle()|escape}</li>
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
             
            
             {iterate from=browseCategories item=browseCategory}
             <li><a href='{$browseCategory->getPath()|escape}">'>{$browseCategory->getLocalizedTitle()|escape}</a></li>
             {/iterate}           
            <div class="linea">
                <div class="icon"><img src="/UNLP/images/icono_area.png" />
                    <div class="texto_icon">Ciencias Agropecuarias</div>
                </div>
                <div class="icon"><img src="/UNLP/images/icono_area.png" />
                    <div class="texto_icon">Arte</div>
                </div>
                <div class="icon"><img src="/UNLP/images/icono_area.png" />
                    <div class="texto_icon">Informática</div>
                </div>
                <div class="icon"><img src="/UNLP/images/icono_area.png" />Peronismo</div>
            </div>

            <div class="linea">
                <div class="icon"><img src="/UNLP/images/icono_area.png" />
                    <div class="texto_icon">Ciencias Agropecuarias</div>
                </div>
                <div class="icon"><img src="/UNLP/images/icono_area.png" />
                    <div class="texto_icon">Arte</div>
                </div>
                <div class="icon"><img src="/UNLP/images/icono_area.png" />
                    <div class="texto_icon">Informática</div>
                </div>
                <div class="icon"><img src="/UNLP/images/icono_area.png" />Peronismo</div>
            </div>

            <div class="linea">
                <div class="icon"><img src="/UNLP/images/icono_area.png" />
                    <div class="texto_icon">Ciencias</div>
                </div>
                <div class="icon"><img src="/UNLP/images/icono_area.png" />
                    <div class="texto_icon">Arquitectura</div>
                </div>
                <div class="icon"><img src="/UNLP/images/icono_area.png" />
                    <div class="texto_icon">Biología</div>
                </div>
                <div class="icon"><img src="/UNLP/images/icono_area.png" />Sumbudrule</div>
            </div>

        </div>


    </div>


{literal}
<script>
    jQuery(document).ready(function() {
            $('#mycarousel').jcarousel();
    });
</script>
{/literal}
{include file="common/footer.tpl"}
