{**
* templates/catalog/category.tpl
*
* Copyright (c) 2014 Simon Fraser University Library
* Copyright (c) 2003-2014 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Display a public-facing category view in the catalog.
*}
{strip}
    {include file="common/header.tpl" suppressPageTitle=true}
{/strip}

{if $category}
    <h2 class="pkp_helpers_text_center"><em>{$category->getLocalizedTitle()}</em></h2>
        {/if}

<div class="catalogContainer">
    <div class="temario">
        <h1>Áreas temáticas</h1>
        <ul class="areas">
            {iterate from=browseCategories item=browseCategory}
            <li><a href='category/{$browseCategory->getPath()|escape}'>{$browseCategory->getLocalizedTitle()|escape}</a></li>
                {/iterate}  
        </ul>

    </div>
    {if $category}     
        <div class="medio">
            {* Include the full monograph list *}
            {include file="unlp/monographs.tpl" publishedMonographs=$publishedMonographs}
        </div>
{/if}
</div><!-- catalogContainer -->

{include file="common/footer.tpl"}
