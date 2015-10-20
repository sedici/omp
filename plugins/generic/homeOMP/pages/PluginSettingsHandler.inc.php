<?php


/**
 * @file PluginSettingsHandler.inc.php
 *
 * Copyright (c) Sobrado Ariel
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class IndexHandler
 * @ingroup pages_index
 *
 * @brief Handle site index requests if category plugin is enabled.
 */



import('classes.handler.Handler');
import('plugins.generic.statsAdmin.dao.StatsAdminDAO');
import('plugins.generic.statsAdmin.forms.ViewForm');
import('classes.notification.NotificationManager');

class PluginSettingsHandler extends Handler {
	/**
	 * Constructor
	 **/
	function PluginSettingsHandler() {
	    parent :: Handler();
	}

	/**
	 * Handle the option configuration request
	 */
	function index() {
           	$plugin =& PluginRegistry::getPlugin('generic', STATSADMIN_PLUGIN_NAME_PLUGIN_NAME);
		$templateManager =& TemplateManager::getManager();
		$templateManager->assign('getAdminEnabled',$plugin->getAdminEnabled());
		$this->setupTemplate();
		$templateManager->display($plugin->getTemplatePath() . '/templates/pluginSettings.tpl');	
	
	}

	/**
	 * Enable the plugin to use
	 */
	function enablePlugin() {
		$plugin = & PluginRegistry :: getPlugin('generic', STATSADMIN_PLUGIN_NAME);
		$pluginDao=& DAORegistry::getDAO('PluginSettingsDAO');
		$pluginDao->updateSetting(0, 'statsAdminPlugin', 'adminEnabled', true, 'bool');	
		$user = Request::getUser();
		$notificationManager = new NotificationManager();
		$messageParams = array('pluginName' => $plugin->getDisplayName());
		$notificationManager->createTrivialNotification($user->getId(),NOTIFICATION_TYPE_PLUGIN_ENABLED,$messageParams);
		Request :: redirect('index', 'admin');
		
	}
	
	/**
	 * Disable the plugin without uninstall
	 */
	function disablePlugin() {
		$plugin = & PluginRegistry :: getPlugin('generic', STATSADMIN_PLUGIN_NAME);
		$pluginDao=& DAORegistry::getDAO('PluginSettingsDAO');
		$pluginDao->updateSetting(0, 'statsAdminPlugin', 'adminEnabled', false, 'bool');	
		$user = Request::getUser();
		$notificationManager = new NotificationManager();
		$messageParams = array('pluginName' => $plugin->getDisplayName());
		$notificationManager->createTrivialNotification($user->getId(),NOTIFICATION_TYPE_PLUGIN_DISABLED,$messageParams);
		Request :: redirect('index', 'admin');
	}
	/**
	 * Wrapper url redirect
	 */
	function back(){
		Request:: redirect('index','admin');
	}
	/**
	 * Wrapper url redirect
	 */
	function menu(){
		Request:: redirect('index','statsAdmin');
	}
	
	/**
	 * Handle the setView request
	 */
	function setView(){
		$plugin =& PluginRegistry::getPlugin('generic', STATSADMIN_PLUGIN_NAME);
		$pluginDao=& DAORegistry::getDAO('PluginSettingsDAO');
		$view = $pluginDao->getSetting(0,'statsAdminPlugin','viewType'); 
		$form = new ViewForm($plugin,$view);
		$this->setupTemplate();
		if (Request::getUserVar('saveView')){
			$form->readInputData();
			if($form->validate()){
				$form->execute();
				$view = $form->getData('viewType');	
				$pluginDao->updateSetting(0, 'statsAdminPlugin', 'viewType', $view, 'int');
				$user = Request::getUser();
				$notificationManager = new NotificationManager();
				$notificationManager->createTrivialNotification($user->getId());
				Request :: redirect('index', 'admin');
			}
			else{
				$form->makeOptions();
				$form->display();
			}	
		}else{
			$form->initData();
			$form->display();
		}
		
	}
	
	/* Set up common template variables.
	 * @param $subclass boolean set to true if caller is below this handler in the heirarchy
	 */
	function setupTemplate($subclass = false) {
		parent::setupTemplate();
		$templateMgr =& TemplateManager::getManager();

		$pageHierarchy = array(array(Request::url(null, 'user'), 'navigation.user'));

		if ($subclass) $pageHierarchy[] = array(Request::url(null, 'dashboard'), 'plugins.generic.statsAdmin');

		$templateMgr->assign_by_ref('pageHierarchy', $pageHierarchy);
	}
}
?>