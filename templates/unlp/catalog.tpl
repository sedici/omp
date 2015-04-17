{**
 * templates/catalog/index.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Entry page for the public-facing catalog
 *}
{strip}
{assign var="pageTitle" value="navigation.catalog"}
{include file="common/header.tpl" suppressPageTitle=true}
{/strip}

{* Include the full monograph list *}
{include file="unlp/monographs.tpl" publishedMonographs=$publishedMonographs}

{include file="common/footer.tpl"}
