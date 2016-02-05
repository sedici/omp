{**
 * templates/catalog/book/viewFile.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Display a public-facing book view in the catalog.
 *}
{strip}
{assign var="pageTitleTranslated" value=$publishedMonograph->getLocalizedFullTitle()}
{include file="common/header.tpl"}
{/strip}
<a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="book" path=$publishedMonograph->getId()}">Volver al Libro</a>
<div class="pkp_catalog_bookFile">

{$viewableFileContent}

</div><!-- pkp_catalog_book -->

{include file="common/footer.tpl"}
