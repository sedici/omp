{capture assign="publicMenu"}
	{if $currentPress}
		{if $enableAnnouncements}
			<li><a href="{url router=$smarty.const.ROUTE_PAGE page="announcement"}">{translate key="announcement.announcements"}</a></li>
		{/if}
		<li><a href="#">{translate key="navigation.about"}</a>
			<ul>
				{if not empty($contextInfo.contact)}
					<li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="contact"}">{translate key="about.contact"}</a></li>
				{/if}
				{if not empty($contextInfo.description)}
					<li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="description"}">{translate key="about.description"}</a></li>
				{/if}
				{if not empty($contextInfo.editorialTeam)}
					<li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialTeam"}">{translate key="about.editorialTeam"}</a></li>
				{/if}
				{if not empty($contextInfo.editorialPolicies)}
					<li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialPolicies"}">{translate key="about.policies"}</a></li>
				{/if}	
				<li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="submissions"}">{translate key="about.submissions"}</a></li>
				{if not empty($contextInfo.sponsorship)}
					<li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="sponsorship"}">{translate key="about.pressSponsorship"}</a></li>
				{/if}
			</ul>
		</li>
	{/if}
{/capture}



<div class="pkp_structure_head" id="headerContainer">
    <div class="pkp_structure_head_siteNav">
	<ul class="pkp_helpers_flatlist pkp_helpers_align_left">
		{if $isUserLoggedIn}
			{if array_intersect(array(ROLE_ID_SITE_ADMIN), $userRoles)}
				<li><a href="{if $multipleContexts}{url router=$smarty.const.ROUTE_PAGE context="index" page="admin" op="index"}{else}{url router=$smarty.const.ROUTE_PAGE page="admin" op="index"}{/if}">{translate key="navigation.admin"}</a></li>
			{/if}
		{/if}
		{if $multipleContexts}
			<li>{include file="header/contextSwitcher.tpl"}</li>
		{/if}
	</ul>
	<ul class="pkp_helpers_flatlist pkp_helpers_align_right">
		{if $isUserLoggedIn}
			<li class="profile">{translate key="user.hello"}&nbsp;<a href="{url router=$smarty.const.ROUTE_PAGE page="user" op="profile"}">{$loggedInUsername|escape}</a></li>
			<li><a href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signOut"}">{translate key="user.logOut"}</a></li>
			{if $isUserLoggedInAs}
				<li><a href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signOutAsUser"}">{translate key="user.logOutAs"} {$loggedInUsername|escape}</a></li>
			{/if}
		{elseif !$notInstalled}
			{if !$hideRegisterLink}
				<li><a href="{url router=$smarty.const.ROUTE_PAGE page="user" op="register"}">{translate key="navigation.register"}</a></li>
			{/if}
			<li><a href="{url router=$smarty.const.ROUTE_PAGE page="login"}">{translate key="navigation.login"}</a></li>
		{/if}
                <form class="pkp_form" action="#">
                    <p>
                        <select {if $isPostRequest}disabled="disabled" {/if}class="applyPlugin selectMenu" size="1" name="locale" onchange="location.href={if $languageToggleNoUser}'{$referrerUrl|escape}{if strstr($referrerUrl, '?')}&amp;{else}?{/if}setLocale='+this.options[this.selectedIndex].value{else}('{url|escape:"javascript" router=$smarty.const.ROUTE_PAGE page="user" op="setLocale" path="NEW_LOCALE" source=$smarty.server.REQUEST_URI}'.replace('NEW_LOCALE', this.options[this.selectedIndex].value)){/if}">
                            {html_options options=$languageToggleLocales selected=$currentLocale}
                        </select>
                    </p>
                </form>
                
	</ul>
</div>
    
    <div class="parabanda">
        
        <a href="{url router=$smarty.const.ROUTE_PAGE context="index"  op="index"}">
		
        <img src="/UNLP/images/marca_libros.png" width="292" height="145" /></a></div>

	<div class="contenedor_derecho">
		<div class="menu">
			<ul class="sf-menu">
                            {if $isUserLoggedIn}
		
                                    {if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_SUB_EDITOR, ROLE_ID_ASSISTANT, ROLE_ID_REVIEWER, ROLE_ID_AUTHOR), $userRoles)}
                                            <li><a href="{url router=$smarty.const.ROUTE_PAGE page="dashboard"}">{translate key="navigation.dashboard"}</a></li>
                                    {/if}
                                {if $currentPress}
					{if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_SUB_EDITOR), $userRoles)}
					<li>
						<a href="#">{translate key="navigation.management"}</a>
						<ul>
							<li>
								<a href="{url router=$smarty.const.ROUTE_PAGE page="manageCatalog"}">{translate key="navigation.catalog"}</a>
							</li>
							{if array_intersect(array(ROLE_ID_MANAGER), $userRoles)}
							<li>
								<a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="index"}">{translate key="navigation.settings"}</a>
								<ul>
									<li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="press"}">{translate key="context.context"}</a></li>
									<li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="website"}">{translate key="manager.website"}</a></li>
									<li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="publication"}">{translate key="manager.workflow"}</a></li>
									<li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="distribution"}">{translate key="manager.distribution"}</a></li>
									<li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="access"}">{translate key="navigation.access"}</a></li>
								</ul>
							</li>
							<li>
								<a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="tools" path="index"}">{translate key="navigation.tools"}</a>
								<ul>
									<li><a href="{url router=$smarty.const.ROUTE_PAGE page="manager" op="importexport"}">{translate key="navigation.tools.importExport"}</a></li>
									<li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="tools" path="statistics"}">{translate key="navigation.tools.statistics"}</a></li>
								</ul>
							</li>
							{/if}
						</ul>
					</li>
				{/if}{* ROLE_ID_MANAGER || ROLE_ID_SUB_EDITOR *}
				
			{/if}  
                        {/if}{* $isUserLoggedIn *}
                                <li><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">{translate key="navigation.catalog"}</a></li>
                                <li><a href="{url op="category" page='catalog'}">Areas temáticas</a></li>
                                <li><a href="{url op="unidades" page='catalog'}">Unidades</a></li>
				{$publicMenu}
                                
		</ul>
	
	
		</div>
                                <div class="escudounlp"><a href='http://www.unlp.edu.ar/' target="_blank"><img src="/UNLP/images/escudo_unlp_nuevo.png" /></a></div>
	
	</div>
                               
</div>
                                