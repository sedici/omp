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
        <div class="destacado imagen_y_titulo col-xs-12">
            <div class="col-xs-3 imagendetalle">
                {url|assign:bookImageLinkUrl router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="cover" submissionId=$publishedMonograph->getId()}
                <a title="{$publishedMonograph->getLocalizedFullTitle()|strip_tags|escape}" href="{$bookImageLinkUrl}"><img class="pkp_helpers_container_center" alt="{$publishedMonograph->getLocalizedFullTitle()|escape}" src="{url router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="catalog" submissionId=$publishedMonograph->getId()}"  width='100' height="132"/></a>
            </div>
            <div class="col-xs-9 titulo"><h1> {$publishedMonograph->getLocalizedFullTitle()|strip_unsafe_html}</h1></div>

        </div>		
    </div>

    <div class="row">
        <div class="detalle col-md-12">
            <div class="detalles_del_item_mobile  col-xs-9">
                <ul>
                    <li> {$publishedMonograph->getAuthorString()}</li>
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
                                        <strong>ISBN</strong>  {$identificationCode->getValue()|escape}
                                    {/if}
                                    {/foreach}

                                        {/if}           
                                        </li>     

                                    </ul>
                                </div>
                                <div class="row">
                                    <div class=" col-xs-12">
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
                                                    <div class="publicationFormatDownload" id="publicationFormat-download-{$publicationFormatId|escape}">
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
                            <div class="row">
                                <div class="col-xs-12 informaciondeautores">
                                    <ul>
                                        {assign var=authors value=$publishedMonograph->getAuthors()}
                                        {foreach from=$authors item=author}
                                            <li>
                                                {if $author->getIncludeInBrowse()}
                                                    <h1>{translate key="catalog.aboutTheAuthor" roleName=$author->getLocalizedUserGroupName()}: <strong>{$author->getFullName()}</strong></h1>
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
