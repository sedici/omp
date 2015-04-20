{**
 * templates/catalog/series.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Display a public-facing series view in the catalog.
 *}
{strip}
{include file="common/header.tpl" suppressPageTitle=true}
{/strip}

    
<div class="catalogContainer">
    <div class="temario">
        <h1>Unidades Academicas</h1>
        <ul class="areas">
             {iterate from=browseSeries item=browseSeriesItem}
                  <li>
                      <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="unidades" path=$browseSeriesItem->getPath()}">
                        {$browseSeriesItem->getLocalizedTitle()|escape}
                      </a>
                  </li>    
                {/iterate}
        </ul>

    </div>
       <div class="medio">
            {* Include the full monograph list *}
            {include file="unlp/monographs.tpl" publishedMonographs=$publishedMonographs}
        </div>
{if $series}
	{assign var="image" value=$series->getImage()}
	{if $series->getLocalizedDescription() || $image}
		<div class="pkp_catalog_seriesDescription">
			{if $image}
				<a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="fullSize" type="series" id=$series->getId()}">
					<img class="pkp_helpers_align_left" height="{$image.thumbnailHeight}" width="{$image.thumbnailWidth}" src="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="thumbnail" type="series" id=$series->getId()}" alt="{$series->getLocalizedFullTitle()|escape}" />
				</a>
			{/if}
			{$series->getLocalizedDescription()|strip_unsafe_html}
		</div>
	{/if}
{/if}

</div><!-- catalogContainer -->

{include file="common/footer.tpl"}