{**
* templates/catalog/results.tpl
*
* Copyright (c) 2014 Simon Fraser University Library
* Copyright (c) 2003-2014 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Search results page for the public-facing catalog
*}
{strip}
    {assign var="pageTitle" value="search.searchResults"}
    {include file="common/header.tpl"} 
{/strip}

<div class="row">
    {include file="unlp/mobile/menu.tpl"}
</div>
<div class="row">
    <div class="mobile_layout">
        <div class="col-md-12">
            <div class="col_principal">
                {* Include the full monograph list *}
                {include file="unlp/mobile/monographs.tpl" publishedMonographs=$publishedMonographs}
            </div>
        </div>
    </div>
</div>
<div class="row">
   {include file="unlp/mobile/footer.tpl"}
</div>