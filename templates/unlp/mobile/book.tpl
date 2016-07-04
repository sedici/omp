{include file="unlp/mobile/headMobile.tpl"}

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<div class="container">

    {literal}
        <script>
            /** twitter share **/
            !function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
                if (!d.getElementById(id)) {
                    js = d.createElement(s);
                    js.id = id;
                    js.src = p + '://platform.twitter.com/widgets.js';
                    fjs.parentNode.insertBefore(js, fjs);
                }
            }(document, 'script', 'twitter-wjs');

            /** facebook share **/
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3&appId=1439620293025690";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));


            $(document).ready(function () {
                var share_fb = "#share_fb";
                var share_tw = "#share_tw";
                url = window.location.href;

                $(share_tw).append('<a href="https://twitter.com/share" class="twitter-share-button" data-via="sedici_unlp" data-lang="es"   data-count="none">Twittear</a>');
                $(share_fb).append('<div class="fb-like" data-layout="button_count" data-href="' + url + '" data-width="25" data-action="like" data-show-faces="false" data-share="true"></div>');
            });
        </script>    
    {/literal} 


    <div class="row">
        {include file="unlp/mobile/menu.tpl"}
    </div>

    <div class="row">
        <div class="col-xs-12 center-block imagendetalle">
            {url|assign:bookImageLinkUrl router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="cover" submissionId=$publishedMonograph->getId()}
            <a title="{$publishedMonograph->getLocalizedFullTitle()|strip_tags|escape}" href="{$bookImageLinkUrl}"><img class="center-block pkp_helpers_container_center img-responsive" alt="{$publishedMonograph->getLocalizedFullTitle()|escape}" src="{url router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="catalog" submissionId=$publishedMonograph->getId()}" /></a>
        </div>
    </div>

    <div class="row">
        <div class="destacado imagen_y_titulo">

            <div class="col-xs-12 titulo"><h1> {$publishedMonograph->getLocalizedFullTitle()|strip_unsafe_html}</h1>
                <div class="autor_mobile">{$publishedMonograph->getAuthorString()}</div>
            </div>
        </div>		
    </div>

    <div class="row">
        <div class="detalle col-md-12">
            <div class="detalle_descarga">
                <div class="center-block">


                    <div class="accordion">
                        <div class="accordion-section">

                        {assign var=publicationFormats value=$publishedMonograph->getPublicationFormats()}
                    {assign var=currency value=$currentPress->getSetting('currency')}

                    {if $useCollapsedView}

                            {assign var=cantidad value=1}
                            {foreach from=$publicationFormats item=publicationFormat}
                                {assign var=format value=$publicationFormat->getLocalizedName()}
                                <a class="accordion-section-title  imagen-mobile" href="#accordion-{$cantidad}"><img src="/UNLP/images/desplegable_{$format}.png"/></a>
                                <div id="accordion-{$cantidad}" class="accordion-section-content">
                                    <ul>
                                        {if $publicationFormat->getIsAvailable()}
                                            {include file="unlp/mobile/bookFiles.tpl" availableFile=$availableFile publicationFormatId=$publicationFormat->getId() publishedMonograph=$publishedMonograph currency=$currency}
                                        {/if}
                                </ul>
                                </div><!--end .accordion-section-content-->
                                {assign var=cantidad value=$cantidad+1}
                            {/foreach}

                    {else}

                        {assign var=cantidad value=1}

                        {foreach from=$publicationFormats item=publicationFormat}
                            {assign var=format value=$publicationFormat->getLocalizedName()}
                            <a class="accordion-section-title imagen-mobile" href="#accordion-{$cantidad}"><img src="/UNLP/images/desplegable_{$format|upper}.png"/></a>

                            <div id="accordion-{$cantidad}" class="accordion-section-content">
                            {assign var=publicationFormatId value=$publicationFormat->getId()}
                            {if $publicationFormat->getIsAvailable() && $availableFiles[$publicationFormatId]}
                                <!--<div class="publicationFormatDownload center-block" id="publicationFormat-download-{$publicationFormatId|escape}">-->
                                    <ul>
                                        {include file="unlp/mobile/bookFiles.tpl" availableFile=$availableFile publicationFormatId=$publicationFormatId publishedMonograph=$publishedMonograph currency=$currency}
                                    </ul>
                             <!--   </div>-->
                            {/if}
                            </div><!--end .accordion-section-content-->
                            {assign var=cantidad value=$cantidad+1}
                        {/foreach}
                    {/if}{* useCollapsedView *}
                        </div><!--end .accordion-section-->
                    </div><!--end .accordion-->


                </div>
                </div>

                <div class="detalles_del_item_mobile">
                    <ul>
                        <li>
                            {if $series}
                                <div class="seriesLink"><strong>{translate key="series.series"}:</strong> <a href="{url page="catalog" op="unidades" path=$series->getPath()}">{$series->getLocalizedFullTitle()}</a></div>
                                {/if}
                        </li>
                        <li>
                            {assign var=categories value=$publishedMonograph->getCategories()}
                            {if !$categories->wasEmpty()}
                                <strong>{translate key="catalog.manage.category"}:</strong>
                                {iterate from=categories item=category}
                                <a href="{url op="category" path=$category->getPath()}">{$category->getLocalizedTitle()|strip_unsafe_html}</a>, 
                                {/iterate}{* categories *}
                            {/if}
                        </li>

<li>
                            <strong>{translate key="catalog.manage.fecha_publicacion"}:</strong>
                            {assign var=fecha value=$publishedMonograph->getCoverageChron()}
                              {$fecha[$currentLocale]}
                         
                    </li>
                     {assign var=licencia value=$publishedMonograph->getRights()}
                    {if $licencia[$currentLocale]!='' }
                         <li>
                                <strong>{translate key="catalog.manage.licencia"}:</strong>
                                {$licencia[$currentLocale]}
                         
                        </li>

                    {/if}

                        {assign var=seriePosition value=$publishedMonograph->getSeriesPosition()}
                        {if $seriePosition !=''}
                            <li>
                                <strong>{translate key="catalog.manage.seriePosition"}:</strong>
                                {$seriePosition}
                            </li>
                        {/if}


                    {assign var=source value=$publishedMonograph->getSource()}
                    {if $source[$currentLocale]!='' }
                        <li>
                            <strong>{translate key="catalog.manage.source"}:</strong>
                            {$source[$currentLocale]}
                        </li>
                     {/if}   
                        <li>
                            {assign var=publicationFormats value=$publishedMonograph->getPublicationFormats(true)}
                            {assign var=viablePdfCount value=0}
                            {foreach from=$publicationFormats item=publicationFormat}
                                {if $publicationFormat->getIsApproved() && !$publicationFormat->getPhysicalFormat()}
                                    {assign var="publicationFormatId" value=$publicationFormat->getId()}
                                    {if !empty($availableFiles.$publicationFormatId)}
                                        {assign var=publicationFormatFiles value=$availableFiles.$publicationFormatId}
                                        {foreach from=$availableFiles.$publicationFormatId item=availableFile}
                                            {if $availableFile->getDocumentType()==$smarty.const.DOCUMENT_TYPE_PDF}
                                                {assign var=viablePdf value=$availableFile}
                                                {assign var=viablePublicationFormat value=$publicationFormat}
                                                {assign var=viablePdfCount value=$viablePdfCount+1}
                                            {/if}
                                        {/foreach}
                                    {/if}
                                {/if}
                            {/foreach}    
                            {* Get the ISBN *}
                            {if ($viablePublicationFormat)}

                                {assign var=identificationCodes value=$viablePublicationFormat->getIdentificationCodes()}
                                {foreach from=$identificationCodes->toArray() item=identificationCode}

                                    {if $identificationCode->getCode() == "02" || $identificationCode->getCode() == "24" || $identificationCode->getCode() == "15"}{* ONIX codes for ISBN-10 or ISBN-13 *}
                                            <strong>ISBN</strong>  <div class="numeroisbn">{$identificationCode->getValue()|escape}</div>
                                        {/if}
                                 
                                    {if $identificationCode->getCode() == "38" }{* ONIX codes for Handle = 38 *}
                                        <strong>Identificador(URI):</strong>  {$identificationCode->getValue()|escape}
                                    {/if}

                                 {/foreach}

                                            {/if}           
                                            </li>     
                                           <li>
                                               {foreach from=$representatives->records item=representative}
                                                   <strong>Editorial:</strong>
                                                   {foreach  key=key from=$representative item=r}
                                                       {if $key=='name'}
                                                           {if $key!='0'}
                                                               {$r}
                                                           {/if}
                                                       {/if}
                                                   {/foreach}

                                               {/foreach}
                                     </li>
                                        </ul>
                                    </div>

                                </div>          
                            </div>
                            <div class="metadata simple-item-view-other subtype">
                                <div class="share-bar">
                                    <div class="external-share" style="display:inline-block;vertical-align:top">
                                        <div id="fb-root"></div><div id="share_fb"></div>
                                    </div>
                                    <div class="external-share"><div id="share_tw"></div></div>   
                                </div>
                            </div> 
                        </div>

                        <!--reseña-->  
                        <div class="row">
                            <div class="resena_mobile col-xs-12">
                                <h1>Reseña</h1>
                                <p>{$publishedMonograph->getLocalizedAbstract()|strip_unsafe_html}</p>
                            </div>
                            {if (chapters|size > 0)}
                                <div class="contenidos">
                                    <h1>Tabla de contenidos</h1>
                                    <ul>
                                        {foreach from=$chapters item=chapter}
                                            <li>			
                                                <p><strong>{$chapter->getLocalizedTitle()}</strong>
                                                    {if $chapter->getLocalizedSubtitle() != '' }<br/>{$chapter->getLocalizedSubtitle()}{/if}
                                                    {assign var=chapterAuthors value=$chapter->getAuthorNamesAsString()}
                                                <div class="authorName">{$chapterAuthors}</div>
                                                </p>
                                            </li>
                                        {/foreach}
                                    </ul>
                                </div>
                            {/if}
                        </div>


                        <!--autores-->  
                        <div>
                            <div class="col-xs-12 informaciondeautores">
                                <h1>{translate key="submission.information"}</h1>
                                <ul class="listainfo">
                                    {assign var=authors value=$publishedMonograph->getAuthors()}
                                    {foreach from=$authors item=author}
                                        <li>
                                            {if $author->getIncludeInBrowse()}
                                                <h1><strong>{$author->getFullName()}</strong></h1>
                                                {assign var=biography value=$author->getLocalizedBiography()|strip_unsafe_html}
                                            {if $biography != ''}{$biography}{/if}
                                        {/if}
                                    </li>
                                {/foreach}
                            </ul>
                        </div>
                    </div>

                    <div class="row">
                        {include file="unlp/mobile/footer.tpl"}
                    </div>
                </div> <!-- /container -->
{literal}
    <script>
        $(document).ready(function() {
            function close_accordion_section() {
                $('.accordion .accordion-section-title').removeClass('active');
                $('.accordion .accordion-section-content').slideUp(300).removeClass('open');
            }

            $('.accordion-section-title').click(function(e) {
                // Grab current anchor value
                var currentAttrValue = $(this).attr('href');

                if($(e.target).is('.active')) {
                    close_accordion_section();
                }else {
                    close_accordion_section();

                    // Add active class to section title
                    $(this).addClass('active');
                    // Open up the hidden content panel
                    $('.accordion ' + currentAttrValue).slideDown(300).addClass('open');
                }

                e.preventDefault();
            });
            close_accordion_section();

        });
    </script>
{/literal}
                <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
                <script type="text/javascript" src="{$baseUrl}/UNLP/styles/bootstrap/js/bootstrap.js"></script>
