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
	</ul>
</div>
    
    <div class="parabanda">
        <a href=""><img src="/UNLP/images/marca_libros.png" width="292" height="145" /></a></div>

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
				{$publicMenu}
			{/if}  
                        {/if}{* $isUserLoggedIn *}
                               <li><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">{translate key="navigation.catalog"}</a>
                                <li><a href="{url op="category" page='catalog'}">Areas temáticas</a></li>
                                <li><a href="#">Unidades</a></li>
				<li><a href="#">Acerca de</a></li>
                                
		</ul>
	
	
		</div>
                                <div class="escudounlp"><a href='http://www.unlp.edu.ar/' target="_blank"><img src="/UNLP/images/escudo_unlp.png" /></a></div>
	
	</div>
                               
</div>
                                