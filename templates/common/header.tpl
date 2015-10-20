{**
 * templates/common/header.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site header.
 *}
{capture assign="deprecatedThemeStyles"}
	<link rel="stylesheet" type="text/css" media="all" href="{$baseUrl}/lib/pkp/styles/lib/selectBox/jquery.selectBox.css" />
{/capture}

<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{translate|assign:"pageTitleTranslated" key=$pageTitle}{/if}
{include file="core:common/headerHead.tpl"}
<body>
    <script type="text/javascript">
            // Initialise JS handler.
            $(function () {ldelim}
                    $('body').pkpHandler(
                            '$.pkp.controllers.SiteHandler',
        {ldelim}
            {if $isUserLoggedIn}
                                        inlineHelpState: {$initialHelpState},
        {/if}
                                        toggleHelpUrl: '{url|escape:javascript page="user" op="toggleHelp"}',
                                                toggleHelpOnText: '{$toggleHelpOnText|escape:"javascript"}',
                                                toggleHelpOffText: '{$toggleHelpOffText|escape:"javascript"}',
        {include file="core:controllers/notification/notificationOptions.tpl"}
        {rdelim});
        {rdelim});
    </script>
    {include file="../UNLP/templates/headUNLP.tpl"}
   
   <div class="pkp_structure_page">
{*		{url|assign:fetchHeaderUrl router=$smarty.const.ROUTE_COMPONENT component="page.PageHandler" op="header" escape=false}
		{load_url_in_div class="pkp_structure_head" id="headerContainer" url=$fetchHeaderUrl}
  *}             
               {include file="../UNLP/templates/headerUNLP.tpl"}
               
              
              

		<div class="pkp_structure_body">
			<div class="pkp_structure_content">
				{*<div class="line">
					{if !$noContextsConfigured}
						{include file="header/search.tpl"}
					{/if}
				</div>
                                    *}
				{url|assign:fetchSidebarUrl router=$smarty.const.ROUTE_COMPONENT component="page.PageHandler" op="sidebar" params=$additionalArgs escape=false}


				{load_url_in_div id="sidebarContainer" url=$fetchSidebarUrl}


                                
                                
				<script type="text/javascript">
					// Attach the JS page handler to the main content wrapper.
					$(function() {ldelim}
						$('div.pkp_structure_main').pkpHandler('$.pkp.controllers.PageHandler');
					{rdelim});
				</script>

				<div class="pkp_structure_main">
					{** allow pages to provide their own titles **}
					{if !$suppressPageTitle}
						<h2 class="title_left">{$pageTitleTranslated}</h2>
					{/if}
