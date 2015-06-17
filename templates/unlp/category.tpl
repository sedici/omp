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
    {assign var="category_id" value=$category->getId()}
   
    <h2 class="pkp_helpers_text_center"> <center><img src="/files/presses/1/categories/{$category_id}-category.png" /></center><em>{$category->getLocalizedTitle()}</em></h2>
{/if}

<div class="catalogContainer">
    <div class="temario">
        <h1>{translate key="catalog.manage.category"}</h1>
        <ul class="areas">
            {iterate from=browseCategories item=browseCategory}
            <li>
                <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="category" path=$browseCategory->getPath()}">
                    {$browseCategory->getLocalizedTitle()|escape}</a>
            </li>
            {/iterate}  
        </ul>

    </div>
    <div class="medio">
        {* Include the full monograph list *}
        {include file="unlp/monographs.tpl" publishedMonographs=$publishedMonographs}
    </div>
</div><!-- catalogContainer -->

{include file="common/footer.tpl"}
