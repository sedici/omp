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
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/411"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=411" 
                                                                                                alt="Ser humano" data-caption="#publishedMonograph-411-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/411"> Ser humano</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/398"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=398" 
                                                                                                alt="Caracterización de biomasa leñosa con fines energéticos disponible en Chile" data-caption="#publishedMonograph-398-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/398"> Caracterización de biomasa leñosa con fines energéticos disponible en Chile</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/390"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=390" 
                                                                                                alt="Sistema Interamericano de Derechos Humanos" data-caption="#publishedMonograph-390-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/390"> Sistema Interamericano de Derechos Humanos</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/386"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=386" 
                                                                                                alt="Iniciativa latinoamericana para el avance de los derechos humanos de las mujeres" data-caption="#publishedMonograph-386-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/386"> Iniciativa latinoamericana para el avance de los derechos humanos de las mujeres</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/363"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=363" 
                                                                                                alt="Control biológico de enfermedades de las plantas en Chile" data-caption="#publishedMonograph-363-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/363"> Control biológico de enfermedades de las plantas en Chile</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/362"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=362" 
                                                                                                alt="Experiencias de prácticas pedagógicas en alfabetización inicial" data-caption="#publishedMonograph-362-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/362"> Experiencias de prácticas pedagógicas en alfabetización inicial</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/357"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=357" 
                                                                                                alt="Insectos y ácaros de importancia agrícola y cuarentenaria en Chile" data-caption="#publishedMonograph-357-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/357"> Insectos y ácaros de importancia agrícola y cuarentenaria en Chile</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/351"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=351" 
                                                                                                alt="Oriente medio" data-caption="#publishedMonograph-351-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/351"> Oriente medio</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/350"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=350" 
                                                                                                alt="Publicaciones en el campo de la epistemología de las ciencias sociales" data-caption="#publishedMonograph-350-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/350"> Publicaciones en el campo de la epistemología de las ciencias sociales</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/337"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=337" 
                                                                                                alt="Biblioteca del Instituto Nacional y de la Universidad de Chile" data-caption="#publishedMonograph-337-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/337">La Biblioteca del Instituto Nacional y de la Universidad de Chile</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/306"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=306" 
                                                                                                alt="Derecho internacional de la Antártida" data-caption="#publishedMonograph-306-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/306"> Derecho internacional de la Antártida</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/289"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=289" 
                                                                                                alt="Corea, perspectivas desde América Latina" data-caption="#publishedMonograph-289-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/289"> Corea, perspectivas desde América Latina</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/282"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=282" 
                                                                                                alt="América Latina en el mundo" data-caption="#publishedMonograph-282-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/282"> América Latina en el mundo</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/254"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=254" 
                                                                                                alt="Etica e innovación tecnológica" data-caption="#publishedMonograph-254-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/254"> Etica e innovación tecnológica</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/245"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=245" 
                                                                                                alt="Bioética en América Latina" data-caption="#publishedMonograph-245-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/245"> Bioética en América Latina</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/236"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=236" 
                                                                                                alt="Estadística descriptiva, probablilidad e inferencia" data-caption="#publishedMonograph-236-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/236"> Estadística descriptiva, probablilidad e inferencia</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/203"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=203" 
                                                                                                alt="Constructividad y arquitectura" data-caption="#publishedMonograph-203-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/203"> Constructividad y arquitectura</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/5"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=5" 
                                                                                              alt="Bicentenario de Hispanoamérica" data-caption="#publishedMonograph-5-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/5"> Bicentenario de Hispanoamérica</a>
                </div>
            </li>
            <li>
                <div>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/3"><img width="100" height="129" src="http://www.libros.uchile.cl/index.php/sisib/$$$call$$$/submission/cover/cover?monographId=3" 
                                                                                              alt="Materia y memoria: tesoros patrimoniales de la Universidad de Chile" data-caption="#publishedMonograph-3-caption" /></a>
                    <a href="http://www.libros.uchile.cl/index.php/sisib/catalog/book/3"> Materia y memoria: tesoros patrimoniales de la Universidad de Chile</a>
                </div>
            </li>
            <br>
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
