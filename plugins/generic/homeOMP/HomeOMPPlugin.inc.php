<?php 
/**
 * @file plugins/general/homeOMP/HomeOMPPlugin.inc.php
 *
 * Copyright (c) Sobrado Ariel
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * 
 * @ingroup StatsAdmin
 * @see StatsAdminHandler
 *
 * @brief Do the basic plugin activities.
 */


import('lib.pkp.classes.plugins.GenericPlugin');
class HomeOMPPlugin extends GenericPlugin { 
   function register($statsAdmin, $path) { 
       $success=parent::register($statsAdmin, $path); 
        	if ($success) {
                HookRegistry::register ('Templates::Admin::Index::AdminFunctions', array(&$this, 'callback'));
           		HookRegistry::register ('LoadHandler', array(&$this, 'handleRequest'));
           		}
             return $success;  
    } 
    function getName() { 
        return 'homeOMP'; 
    } 
    function getDisplayName() { 
        return __('plugins.generic.homeOMP.displayName');
    } 
    function getDescription() { 
        return __('plugins.generic.homeOMP.plugDescription'); 
    }
    
    
    function getAdminEnabled(){
    	$pluginDao=& DAORegistry::getDAO('PluginSettingsDAO');
    	return $pluginDao->getSetting(0,'homeOMP','adminEnabled');
    }

    function handleRequest($hookName, $args) {
                $page =& $args[0];
		$op =& $args[1];
		$sourceFile =& $args[2];
                $this->setBreadCrumbs(true);
                // If the request is for this plugin, then it must be handled
		if ($page === 'dashboard') {
                	$this->import('pages/StatsAdminHandler');
			define('STATSADMIN_PLUGIN_NAME', $this->getName());     
			//FIXME: use registry to set plugin
			define('HANDLER_CLASS', 'StatsAdminHandler');
		        return true;
		}
               
                
		if  (($this->getAdminEnabled()) && ($op === 'index') && ($page === '' || $page === 'index')) { 
			$this->import('/pages/NewIndexHandler');
			define('STATSADMIN_PLUGIN_NAME',$this->getName());
			define('HANDLER_CLASS','NewIndexHandler');
			return true;
		}
                if ($page === 'statsAdminPlugin'){
                   	$this->import('pages/PluginSettingsHandler');
			define('STATSADMIN_PLUGIN_NAME',$this->getName());
			define('HANDLER_CLASS','PluginSettingsHandler');
			return true;
		}
                if ($op === 'showStats'){
                   	$this->import('pages/ShowStatsHandler');
			define('STATSADMIN_PLUGIN_NAME',$this->getName());
			define('HANDLER_CLASS','ShowStatsHandler');
			return true;
		}
                if ($op === 'siteStatsAdmin'){
                    $this->import('pages/SiteStatsAdminHandler');
			define('STATSADMIN_PLUGIN_NAME',$this->getName());
			define('HANDLER_CLASS','SiteStatsAdminHandler');
			return true;
		}
               
              
                
                
		return false;
	}
     

	function callback($hookName, $args) {
        if (!Validation::isSiteAdmin()) return false;

        $params =& $args[0];
		$smarty =& $args[1];
		$output =& $args[2];
		$output .= '<li>&#187; <a href="'.Request::url(null,'dashboard').'">'.__('plugins.generic.homeOMP.displayName').'</a></li> ';
		return false;
	}
	
	function isSitePlugin() {
		return true;
	}
	
	function getInstallSchemaFile() {
		return $this->getPluginPath() . '/install/schema.xml';
	}
	
        
	/**
	 * Extend the {url ...} smarty to support this plugin.
	 */
	function smartyPluginUrl($params, &$smarty) {
		$path = array($this->getCategory(), $this->getName());
		if (is_array($params['path'])) {
			$params['path'] = array_merge($path, $params['path']);
		} elseif (!empty($params['path'])) {
			$params['path'] = array_merge($path, array($params['path']));
		} else {
			$params['path'] = $path;
		}

		if (!empty($params['id'])) {
			$params['path'] = array_merge($params['path'], array($params['id']));
			unset($params['id']);
		}
		return $smarty->smartyUrl($params, $smarty);
	}

        
	
	/**
	 * Get the name of the settings file to be installed on new journal
	 * creation.
	 * @return string
	 */
	function getContextSpecificPluginSettingsFile() {
		return $this->getPluginPath() . '/settings.xml';
	}
	
	function getManagementVerbs() {
			$verbs = array();
			return parent::getManagementVerbs($verbs);
			//$verbs[] = array('block','plugin.generic.block');
			//return $verbs; TODO: make possible the category plugin habilitation
	}
	
	
	function manage($verb, $args, &$message,&$messageParams) {

		if (!parent::manage($verb, $args, $message,$messageParams)) return false;
	}
	
	
	
     
} 
?>
