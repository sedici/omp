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

<div class="col_principal">
{* Include the full monograph list *}
{include file="unlp/monographs.tpl" publishedMonographs=$publishedMonographs}
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
</div>
{include file="common/footer.tpl"}
