<div class="col1">
    <img src="/UNLP/images/marca_footer.png" width="93" height="70" />
</div>
<div class="col2y3">
    <div class="col2">
        <ul><strong>Mapa del sitio</strong>
            <li> <a href="{url router=$smarty.const.ROUTE_PAGE context="index"  op="index"}">Inicio</a></li>
            <li> <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">{translate key="navigation.catalog"}</a> </li>
            <li><a href="{url op="category" page='catalog'}"> Areas temáticas </a> </li>
            <li><a href="{url op="unidades" page='catalog'}">Unidades </a></li>

        </ul>
    </div>
    <div class="col3">

        <div class="cc"><a href='http://www.creativecommons.org.ar/licencias' target="_blank"><img style="float:left; display:block;" src="/UNLP/images/creative_commons.png" /></a> <p>Licencia Creative Commons. Se permite el uso comercial de la obra y de las posibles obras derivadas, la distribución de las cuales se debe hacer con una licencia igual a la que regula la obra original.</p></div>
    </div>
    <div class="col4">

        <div class="ubicacion"></div>
        <img style="float:left; margin-left:30px;" src="/UNLP/images/ubicacion.png" />
        <div class="ubicacion"><strong>Ubicación</strong> 49 y 115 s/n
            <!--  <p> 49 y 115 s/n <br />
             </p> -->
            <div class="pkp_structure_content">
                <a href="{url page="about" op="aboutThisPublishingSystem"}"><img class="pkp_helpers_align_right" alt="{translate key=$packageKey}" src="{$baseUrl}/{$brandImage}"/></a>
                <a href="{$pkpLink}"><img class="pkp_helpers_align_right pkp_helpers_clear" alt="{translate key="common.publicKnowledgeProject"}" src="{$baseUrl}/lib/pkp/templates/images/pkp_brand.png"/></a>
            </div><

        </div>

    </div>
</div>