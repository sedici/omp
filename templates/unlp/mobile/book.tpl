{include file="unlp/mobile/headMobile.tpl"}

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
                    {assign var=publicationFormats value=$publishedMonograph->getPublicationFormats()}
                    {assign var=currency value=$currentPress->getSetting('currency')}

                    {if $useCollapsedView}
                        <ul>
                            {foreach from=$publicationFormats item=publicationFormat}
                                {if $publicationFormat->getIsAvailable()}
                                    {include file="unlp/mobile/bookFiles.tpl" availableFile=$availableFile publicationFormatId=$publicationFormat->getId() publishedMonograph=$publishedMonograph currency=$currency}
                                {/if}
                            {/foreach}
                        </ul>
                    {else}
                        {foreach from=$publicationFormats item=publicationFormat}
                            {assign var=publicationFormatId value=$publicationFormat->getId()}
                            {if $publicationFormat->getIsAvailable() && $availableFiles[$publicationFormatId]}
                                <div class="publicationFormatDownload center-block" id="publicationFormat-download-{$publicationFormatId|escape}">
                                    {$publicationFormat->getLocalizedName()|escape}
                                    <ul>
                                        {include file="unlp/mobile/bookFiles.tpl" availableFile=$availableFile publicationFormatId=$publicationFormatId publishedMonograph=$publishedMonograph currency=$currency}
                                    </ul>
                                </div>
                            {/if}
                        {/foreach}
                    {/if}{* useCollapsedView *}
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
                            {foreach from=$fecha key=i item=row}
                                {if $i == 'es_ES'}
                                    {$row}
                                {/if}
                           {/foreach}
                         
                    </li>
                     <li>
                            <strong>{translate key="catalog.manage.licencia"}:</strong>
                            {assign var=licencia value=$publishedMonograph->getRights()}
                             {foreach from=$licencia key=i item=l}
                                   {if $i == 'es_ES'}
                                    {$l}
                                   
                                   {/if}
                           {/foreach}
                            
                    </li>
                    <li>
                            <strong>{translate key="catalog.manage.seriePosition"}:</strong>
                            {assign var=serie value=$publishedMonograph->getSeriesPosition()}
                             {foreach from=$serie key=i item=s}
                                   {if $i == 'es_ES'}
                                    {$s}
                                   
                                   {/if}
                           {/foreach}
                            
                    </li>
                    <li>
                            <strong>{translate key="catalog.manage.source"}:</strong>
                            {assign var=source value=$publishedMonograph->getSource()}
                             {foreach from=$source key=i item=so}
                                   {if $i == 'es_ES'}
                                    {$so}
                                   
                                   {/if}
                           {/foreach}
                            
                    </li>

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
                                        {/foreach}

                                            {/if}           
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
                <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
                <script type="text/javascript" src="{$baseUrl}/UNLP/styles/bootstrap/js/bootstrap.js"></script>
