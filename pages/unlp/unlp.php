<?php

/**
 * @defgroup pages_header Header page
 */

/**
 * @file pages/unlp/index.php
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @ingroup pages_index
 * @brief Handle site index page requests.
 *
 */


switch ($op) {
	case 'index':
            	define('HANDLER_CLASS', 'UnlpHandler');
		import('pages.unlp.UnlpHandler');
		break;
         
}

?>
