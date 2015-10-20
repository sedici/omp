 <?php

/**
 * @defgroup plugins_generic_homaOMP
 */
 
/**
 * @file plugins/generic/homeOMP/index.php
 *
 * Copyright (c) Sobrado Ariel
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_generic_statsAdmin
 * @brief Wrapper for homeOMP plugin.
 *
 */

// $Id$


require_once('HomeOMPPlugin.inc.php');

return new HomeOMPPlugin();

?>