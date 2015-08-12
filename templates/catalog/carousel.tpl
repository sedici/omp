{**
 * templates/catalog/carousel.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Display a carousel in the public-facing catalog view.
 *}
{* Only include if there are actually monographs to display *}
{if $publishedMonographs|@count > 0}

<script type="text/javascript">
	// Initialize JS handler for catalog header.
	$(function() {ldelim}
		$('#featuresCarousel').pkpHandler(
			'$.pkp.pages.catalog.CarouselHandler'
		);
	{rdelim});
</script>

{literal}
    <script>
    $(document).ready(function() {
        $('.bxslider').bxSlider({
            mode: 'fade',
            captions: true,
            pager: false
        });
    });
</script>
{/literal} 


 <ul class="bxslider">
        {foreach from=$publishedMonographs item=publishedMonograph}
            {assign var="submissionId" value=$publishedMonograph->getId()}
            {if isset($featuredMonographIds[$submissionId])}
                <li>
                    <div class="destacado">
                        <div class="portada">
                         <img src="{url router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="catalog"   submissionId=$publishedMonograph->getId() random=$publishedMonograph->getId()|uniqid}" height="250" width="350" alt="{$publishedMonograph->getLocalizedFullTitle()|strip_tags|escape}" data-caption="#publishedMonograph-{$submissionId}-caption"/>
                        </div>
                        <div class="detalle">

                            <div class="detalles_del_item">
                                <h2>Título Destacado</h2>
                                <h1> <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="book" path=$submissionId}">{$publishedMonograph->getLocalizedFullTitle()|strip_unsafe_html}</a></h1>
                                <ul>
                                    <li>
                                        <strong>Autor:</strong> {$publishedMonograph->getAuthorString()|escape}
                                    </li>

                                    {if $series}
                                     <li>

                                          <div class="seriesLink"><strong>{translate key="series.series"}:</strong> <a href="{url page="catalog" op="unidades" path=$series->getPath()}">{$series->getLocalizedFullTitle()}</a></div>
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
                                    <strong>ISBN:</strong>  {$identificationCode->getValue()|escape}
                                {/if}
                                {/foreach}
                                    
                         {/if}
                                <li>
                                    <div class='resumen truncate'>
                                        <p>{$publishedMonograph->getLocalizedAbstract()|strip_unsafe_html}</p>
                                    </div>
                                </li>
                                </li> 
                                    <li><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="book" path=$submissionId}">{translate key="common.plusMore"}</a></li>
                                   
                            </div>
                        </div>
                    </div>
                </li>
            {/if}
        {/foreach}
    </ul>
<!-- Features carousel -->
<!--<div class="pkp_catalog_carousel_wrapper pkp_helpers_clear pkp_helpers_dotted_underline" id="featuresCarousel">
	<h2 class="pkp_helpers_text_center"><em>{translate key="catalog.featuredBooks"}</em></h2>
	<div class="carousel_control" id="nextCarouselItem"></div>
	<div class="carousel_control" id="previousCarouselItem"></div>
	<ul class="pkp_catalog_carousel">
		{foreach from=$publishedMonographs item=publishedMonograph}
			{* Only include features in the carousel *}
			{assign var="submissionId" value=$publishedMonograph->getId()}
			{if isset($featuredMonographIds[$submissionId])}
			<li id="publishedMonograph-{$submissionId}" class="mover">
				<span class="moverImg"><div><img src="{url router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="cover" submissionId=$publishedMonograph->getId() random=$publishedMonograph->getId()|uniqid}" alt="{$publishedMonograph->getLocalizedFullTitle()|strip_tags|escape}" data-caption="#publishedMonograph-{$submissionId}-caption"/></div></span>
				<div class="details_box" id="publishedMonograph-{$submissionId}-details">
					<h4>{$publishedMonograph->getLocalizedFullTitle()|strip_unsafe_html}</h4>
					<div class="pkp_catalog_monograph_authorship">{$publishedMonograph->getAuthorString()|escape}</div>
					{if $publishedMonograph->getPublicationFormatString()}
						<div class="pkp_catalog_formats">
							<strong>{translate key="monograph.carousel.publicationFormats"}</strong><br />
							{$publishedMonograph->getPublicationFormatString()|escape}
						</div>
					{/if}
					<div class="pkp_catalog_readMore"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="book" path=$submissionId}">{translate key="common.plusMore"}</a></div>
				</div>
				<div class="pkp_helpers_progressIndicator"></div>
			</li>
			{/if}
		{/foreach}
	</ul>
</div>
-->
{/if}{* $publishedMonographs|@count > 0 *}
