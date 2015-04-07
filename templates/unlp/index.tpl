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
    {* {url|assign:carouselUrl router=$smarty.const.ROUTE_COMPONENT component="carousel.CarouselHandler" op="fetch" escape=false}
    {load_url_in_div id="carousel" url=$carouselUrl}
    *}

    <div style="min-height: 50px;">
        <!-- Jssor Slider Begin -->
        <!-- To move inline styles to css file/block, please specify a class name for each element. --> 
        <!-- ================================================== -->
        <div id="slider1_container" style="display: none; position: relative; margin: 0 auto;
        top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
            <!-- Loading Screen -->
            <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                top: 0px; left: 0px; width: 100%; height: 100%;">
                </div>
                <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center;
                top: 0px; left: 0px; width: 100%; height: 100%;">
                </div>
            </div>
            <!-- Slides Container -->
            <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1300px; height: 500px; overflow: hidden;">
                <div>
                    <img u="image" src2="../img/1920/red.jpg" />
                </div>
                <div>
                    <img u="image" src2="../img/1920/purple.jpg" />
                </div>
                <div>
                    <img u="image" src2="../img/1920/blue.jpg" />
                </div>
            </div>
            
            <!--#region Bullet Navigator Skin Begin -->
            <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->
            <style>
                /* jssor slider bullet navigator skin 21 css */
                /*
                .jssorb21 div           (normal)
                .jssorb21 div:hover     (normal mouseover)
                .jssorb21 .av           (active)
                .jssorb21 .av:hover     (active mouseover)
                .jssorb21 .dn           (mousedown)
                */
                .jssorb21 {
                    position: absolute;
                }
                .jssorb21 div, .jssorb21 div:hover, .jssorb21 .av {
                    position: absolute;
                    /* size of bullet elment */
                    width: 19px;
                    height: 19px;
                    text-align: center;
                    line-height: 19px;
                    color: white;
                    font-size: 12px;
                    background: url(../img/b21.png) no-repeat;
                    overflow: hidden;
                    cursor: pointer;
                }
                .jssorb21 div { background-position: -5px -5px; }
                .jssorb21 div:hover, .jssorb21 .av:hover { background-position: -35px -5px; }
                .jssorb21 .av { background-position: -65px -5px; }
                .jssorb21 .dn, .jssorb21 .dn:hover { background-position: -95px -5px; }
            </style>
            <!-- bullet navigator container -->
            <div u="navigator" class="jssorb21" style="bottom: 26px; right: 6px;">
                <!-- bullet navigator item prototype -->
                <div u="prototype"></div>
            </div>
            <!--#endregion Bullet Navigator Skin End -->
            
            <!--#region Arrow Navigator Skin Begin -->
            <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
            <style>
                /* jssor slider arrow navigator skin 21 css */
                /*
                .jssora21l                  (normal)
                .jssora21r                  (normal)
                .jssora21l:hover            (normal mouseover)
                .jssora21r:hover            (normal mouseover)
                .jssora21l.jssora21ldn      (mousedown)
                .jssora21r.jssora21rdn      (mousedown)
                */
                .jssora21l, .jssora21r {
                    display: block;
                    position: absolute;
                    /* size of arrow element */
                    width: 55px;
                    height: 55px;
                    cursor: pointer;
                    background: url(../img/a21.png) center center no-repeat;
                    overflow: hidden;
                }
                .jssora21l { background-position: -3px -33px; }
                .jssora21r { background-position: -63px -33px; }
                .jssora21l:hover { background-position: -123px -33px; }
                .jssora21r:hover { background-position: -183px -33px; }
                .jssora21l.jssora21ldn { background-position: -243px -33px; }
                .jssora21r.jssora21rdn { background-position: -303px -33px; }
            </style>
            <!-- Arrow Left -->
            <span u="arrowleft" class="jssora21l" style="top: 123px; left: 8px;">
            </span>
            <!-- Arrow Right -->
            <span u="arrowright" class="jssora21r" style="top: 123px; right: 8px;">
            </span>
            <!--#endregion Arrow Navigator Skin End -->
            <a style="display: none" href="http://www.jssor.com">Bootstrap Slider</a>
        </div>
        <!-- Jssor Slider End -->
    </div>





    <!--<div class="destacado">
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
    -->
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
            <img src="/UNLP/images/link_relacionado_01_200.png" width="200" height="70" />
            <img src="/UNLP/images/link_relacionado_02_200.png" width="200" height="70" />
            <img src="/UNLP/images/link_relacionado_03_200.png" width="200" height="61" />
            <img src="/UNLP/images/link_relacionado_04_200.png" width="200" height="74" />
            <img src="/UNLP/images/link_relacionado_05_200.png" width="200" height="76" /></div>

    </div>
</div>
<div class="col_secundaria">
    <div class="busqueda">
        <div class="titulo">Busque el libro que desea</div>
        <div class="subtitulo"></div>
        <div class="barra_">
            <div class="barrita"></div>
            <div class="lupita"></div>
        </div>
    </div>

    <div class="areas_tematicas">
        <div class="rotulo">Explore nuestras colecciones </div>

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






{include file="common/footer.tpl"}
