<?php

/**
 * @file pages/index/IndexMobileHandler.inc.php
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class IndexMobileHandler
 * @ingroup pages_index
 *
 * @brief Handle site index requests.
 */


import('classes.handler.Handler');
//import('plugins.generic.homeOMP.dao.UnidadesAcademicasDAO');

class IndexMobileHandler extends Handler {
	/**
	 * Constructor
	 */
	function IndexMobileHandler() {
		parent::Handler();
	}


	//
	// Public handler operations
	//
	/**
	 * Display the site or press index page.
	 * (If a site admin is logged in and no presses exist, redirect to the
	 * press administration page -- this may be useful upon install.)
	 *
	 * @param $args array
	 * @param $request Request
	 */
	function index_mobile($args, $request) {
            	
                $targetPress = $this->getTargetContext($request);
		$press = $request->getPress();
		$templateMgr = TemplateManager::getManager($request);
                if ($press) {
                    	$this->_displayPressIndexPage($press, $templateMgr);
		}
	}


	//
	// Private helper methods.
	//
	/**
	 * Display a given press index page.
	 * @param $press Press
	 * @param $templateMgr TemplateManager
	 */
	function _displayPressIndexPage($press, &$templateMgr) {


            
		// Expose the featured monograph IDs and associated params
		$featureDao = DAORegistry::getDAO('FeatureDAO');
		$featuredMonographIds = $featureDao->getSequencesByAssoc(ASSOC_TYPE_PRESS, $press->getId());

		if (empty($featuredMonographIds)) {
			$returner = null;
		} else {
			$templateMgr->assign('featuredMonographIds', $featuredMonographIds);

			// Fetch the monographs to display
			$publishedMonographDao = DAORegistry::getDAO('PublishedMonographDAO');
			$publishedMonographs = $publishedMonographDao->getByPressId($press->getId());
			$templateMgr->assign('publishedMonographsCarousel', $publishedMonographs->toAssociativeArray());

		}
            
            
            
            
            
            
            
                if ($press->getSetting('displayNewReleases')) {
		    $newReleaseDao = DAORegistry::getDAO('NewReleaseDAO');
			$newReleases = $newReleaseDao->getMonographsByAssoc(ASSOC_TYPE_PRESS, $press->getId());
			$templateMgr->assign('publishedMonographs', $newReleases);
		}

                
                // Assign header and content for home page.
		$templateMgr->assign('additionalHomeContent', $press->getLocalizedSetting('additionalHomeContent'));
		$templateMgr->assign('homepageImage', $press->getLocalizedSetting('homepageImage'));
		$templateMgr->assign('pageTitleTranslated', $press->getLocalizedSetting('name'));

               
		// Display creative commons logo/licence if enabled.
		$templateMgr->assign('displayCreativeCommons', $press->getSetting('includeCreativeCommons'));

		// Display announcements if enabled.
		$enableAnnouncements = $press->getSetting('enableAnnouncements');
		if ($enableAnnouncements) {
			$enableAnnouncementsHomepage = $press->getSetting('enableAnnouncementsHomepage');
			if ($enableAnnouncementsHomepage) {
				$numAnnouncementsHomepage = $press->getSetting('numAnnouncementsHomepage');
				$templateMgr->assign('enableAnnouncementsHomepage', true);
				$announcementDao = DAORegistry::getDAO('AnnouncementDAO');
				$announcements =& $announcementDao->getAnnouncementsNotExpiredByAssocId(ASSOC_TYPE_PRESS, $press->getId());
				$templateMgr->assign_by_ref('announcements', $announcements);
				if (isset($numAnnouncementsHomepage)) {
					$templateMgr->assign('numAnnouncementsHomepage', $numAnnouncementsHomepage);
				}
			}
		}

		// Display Featured Books
		$displayFeaturedBooks = $press->getSetting('displayFeaturedBooks');
	        $templateMgr->assign('displayFeaturedBooks', $displayFeaturedBooks);

                
                 
		// Display In Spotlight
		if ($press->getSetting('displayInSpotlight')) {
			// Include random spotlight items for the press home page.
			$spotlightDao = DAORegistry::getDAO('SpotlightDAO');
			$spotlights = $spotlightDao->getRandomByPressId($press->getId(), MAX_SPOTLIGHTS_VISIBLE);
			$templateMgr->assign('spotlights', $spotlights);
		}

		// Include any social media items that are configured for the press itself.
		$socialMediaDao = DAORegistry::getDAO('SocialMediaDAO');
		$socialMedia =& $socialMediaDao->getEnabledForContextByContextId($press->getId());
		$blocks = array();
		while ($media = $socialMedia->next()) {
			$media->replaceCodeVars();
			$blocks[] = $media->getCode();
		}

		$templateMgr->assign_by_ref('socialMediaBlocks', $blocks);

                /*
                 * Funciones agregadas al IndeHandler
                 * Ver si se agregan aca   
                 **/
                $seriesDao = DAORegistry::getDAO('UnidadesAcademicasDAO');
		$series = $seriesDao->getByPressIdHomeOMP($press->getId());
		$seriesMenu = $seriesDao->getByPressIdHomeOMP($press->getId());
		$seriesList = $seriesDao->getByPressIdHomeOMP($press->getId());
		
                $templateMgr->assign('browseSeries', $series);
                $templateMgr->assign('browseSeriesMenu', $seriesMenu);
                $templateMgr->assign('browseSeriesList', $seriesList);


		$categoryDao = DAORegistry::getDAO('CategoryDAO');
		$categories = $categoryDao->getByParentId(0,$press->getId());
                $categoriesMenu = $categoryDao->getByParentId(0,$press->getId());
                $categoriesList = $categoryDao->getByParentId(0,$press->getId());
                
		$templateMgr->assign('browseCategories', $categories);
                $templateMgr->assign('browseCategoriesMenu', $categoriesMenu);
                $templateMgr->assign('browseCategoriesList', $categoriesList);
                
          
                $templateMgr->display('unlp/mobile/index.tpl');
                
                /****************Se agrego la redireccion a unlp/inde.tpl********************/
	}
}

?>
