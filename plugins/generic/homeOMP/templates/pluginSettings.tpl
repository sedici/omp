{**
 * pluginSettings.tpl
 *
 * Copyright (c) 2012-2021 Sobrado Ariel
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Display the options of the category Plugin.
 *
 * $Id$
 *}
{strip}
{if $siteTitle}
{assign var="pageTitle" value="plugins.generic.homaOMP.settings"}
{/if}
{include file="common/header.tpl"}
{/strip}

<style>

</style>


<ul>
{if $getAdminEnabled}
<li>&#187; <a href="{url op="disablePlugin"}">{translate key="plugin.generic.statsAdmin.disable"}</a></li>
{/if}
</ul>


