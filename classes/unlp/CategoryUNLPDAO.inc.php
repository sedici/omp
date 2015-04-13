<?php

/**
 * @file classes/unlp/CategoryUNLPDAO.inc.php
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class CategoryUNLPDAO
 * @ingroup UNLP
 * @see Category
 *
 * @brief Operations for retrieving and modifying Category objects.
 */


import ('classes.press.Category');
//import ('classes.press.CategoryDAO');

class CategoryUNLPDAO extends CategoryDAO {
	/**
	 * Constructor
	 */
	function CategoryUNLPDAO() {
            
            parent::CategoryDAO();
	}

        function getAllParent($pressId) {
		// The strange ORDER BY clause is to return subcategories
		// immediately after their parent category's entry.
		$result = $this->retrieveRange(
			'SELECT	*
			FROM	categories
			WHERE	press_id = ?
                        and parent_id is null',
			array((int) $pressId)
		);

		return new DAOResultFactory($result, $this, '_fromRow');
	}

	
}

?>
