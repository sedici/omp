{**
* templates/catalog/book/book.tpl
*
* Copyright (c) 2014 Simon Fraser University Library
* Copyright (c) 2003-2014 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Display a public-facing book view in the catalog.
*}
{strip}
    {assign var="suppressPageTitle" value=true}
    {assign var="pageTitleTranslated" value=$publishedMonograph->getLocalizedFullTitle()}
    {include file="common/header.tpl"}
{/strip}
<!--<div class="pkp_catalog_book">-->

{literal}
<script>
    /** twitter share **/    
    !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');

    /** facebook share **/
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3&appId=1439620293025690";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

   
    $(document).ready(function() {
        var share_fb = "#share_fb"; 
        var share_tw = "#share_tw"; 
        url = window.location.href;

        $(share_tw).append('<a href="https://twitter.com/share" class="twitter-share-button" data-via="sedici_unlp" data-lang="es"   data-count="none">Twittear</a>');
        $(share_fb).append('<div class="fb-like" data-href="'+url+'" data-width="25" data-layout="button" data-action="like" data-show-faces="true" data-share="true"></div>');
    });
</script>    
{/literal}
<div class="col_principal">
    <div class="destacado">
        <h1> {$publishedMonograph->getLocalizedFullTitle()|strip_unsafe_html}</h1>
        <div class="portada">
            {url|assign:bookImageLinkUrl router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="cover" submissionId=$publishedMonograph->getId()}
            <a title="{$publishedMonograph->getLocalizedFullTitle()|strip_tags|escape}" href="{$bookImageLinkUrl}"><img class="pkp_helpers_container_center" alt="{$publishedMonograph->getLocalizedFullTitle()|escape}" src="{url router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="catalog" submissionId=$publishedMonograph->getId()}"  width='100' height="132"/></a>


        </div>
        <div class="detalle">

            <div class="detalles_del_item">

                <ul>
                    <li><strong>Autor/es:</strong> {$publishedMonograph->getAuthorString()}</li>

                    <li>
                        {if $series}
                            <div class="seriesLink"><strong>{translate key="series.series"}:</strong> <a href="{url page="catalog" op="unidades" path=$series->getPath()}">{$series->getLocalizedFullTitle()}</a></div>
                            {/if}
                    </li>
                    <li>
                        {assign var=publicationFormats value=$publishedMonograph->getPublicationFormats()}
			{assign var=currency value=$currentPress->getSetting('currency')}
			{if !$loggedInUsername}<p>{translate key="catalog.loginRequiredForPayment"}</p>{/if}
			{if $useCollapsedView}
				<ul>
					{foreach from=$publicationFormats item=publicationFormat}
						{if $publicationFormat->getIsAvailable()}
							{include file="catalog/book/bookFiles.tpl" availableFile=$availableFile publicationFormatId=$publicationFormat->getId() publishedMonograph=$publishedMonograph currency=$currency}
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
								{include file="catalog/book/bookFiles.tpl" availableFile=$availableFile publicationFormatId=$publicationFormatId publishedMonograph=$publishedMonograph currency=$currency}
							</ul>
						</div>
					{/if}
				{/foreach}
			{/if}{* useCollapsedView *}
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
                                    <strong>ISBN:</strong>  {$identificationCode->getValue()|escape}
                                {/if}
                                {/foreach}
                                    
                         {/if}           
                                </li>     

                            </ul>
                        </div>
                    </div>
                        <div class="metadata simple-item-view-other subtype">
                            <div class="share-bar">
                                <div class="external-share" style="display:inline-block;vertical-align:top">
                                    <div id="fb-root"></div><div id="share_fb"></div>
                                </div>
                                <div class="external-share"><div id="share_tw"></div></div>
                            </div>
                            <script type="text/javascript" src="http://sedici.unlp.edu.ar/social/share.js"></script>
                        </div>
                                
                </div>
                <div class="resena">
                    <h1>Reseña</h1>
                    <p>{$publishedMonograph->getLocalizedAbstract()|strip_unsafe_html}</p>
                </div>

                {if (chapters|size > 0)}
                    <div class="contenidos">
                        <h1>Tabla de contenidos </h1>
                        <ul>
                            {foreach from=$chapters item=chapter}
                                <li>			
                                    <p>
                                        <strong>{$chapter->getLocalizedTitle()}</strong>
                                        {if $chapter->getLocalizedSubtitle() != '' }<br />{$chapter->getLocalizedSubtitle()}{/if}
                                        {assign var=chapterAuthors value=$chapter->getAuthorNamesAsString()}
                                    <div class="authorName">{$chapterAuthors}</div>
                                    </p>
                                </li>
                            {/foreach}

                        </ul>
                    </div>
                {/if}
                <div class="resena">
                    <h1>Informacion de los Autores</h1>
                    <ul>
                        {assign var=authors value=$publishedMonograph->getAuthors()}
                        {foreach from=$authors item=author}
                            <li>
                              {if $author->getIncludeInBrowse()}
                                <p>{translate key="catalog.aboutTheAuthor" roleName=$author->getLocalizedUserGroupName()}: <strong>{$author->getFullName()}</strong></p>
                                {assign var=biography value=$author->getLocalizedBiography()|strip_unsafe_html}
                                {if $biography != ''}{$biography}{else}{translate key="catalog.noBioInfo"}{/if}
                                </li>
                              {/if}
                            {/foreach}
                        </li>
                    </ul>
                </div>
                {include file="catalog/book/googlescholar.tpl"}
                {include file="catalog/book/dublincore.tpl"}
            </div>
            <div class="col_secundaria">
                <div class="busqueda">
                    <div class="titulo">Busque el libro que desea</div>
                    <div class="subtitulo"></div>
                    <div class="barra_">
                        {include file="unlp/search.tpl"}
                        <!--<div class="barrita"></div>
                            <div class="lupita"></div>
                        -->
                    </div>
                </div>
                <div class="relacionados">
                    <h1>Sitios relacionados</h1>
                     {include file="unlp/linkRelaciones.tpl"}
                  
                </div>

            </div>

            <!--</div>--><!-- pkp_catalog_book -->

            {include file="common/footer.tpl"}
