<?php
/**
 * @file plugin/generic/HomeOMPPlugin/dao/UnidadesAcademicasDAO.inc.php
 *
 * Copyright (c) 2015-2021 Sobrado Ariel
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class UnidadesAcademicaDAO
 * @ingroup homeOMP
 * @see homeOMP
 *
 * @brief Abstract class for retrieving and modifying categories.
 */

import('classes.press.SeriesDAO');
class UnidadesAcademicasDAO extends SeriesDAO{
	
        /**
	 * Retrieve all series for a press.
	 * @return DAOResultFactory containing Series ordered by sequence
	 */
	function getByPressIdHomeOMP($pressId, $rangeInfo = null) {
		$params = array(
			'title', AppLocale::getPrimaryLocale(),
			'title', AppLocale::getLocale(),
			(int) $pressId
		);

		$result = $this->retrieveRange(
			'SELECT s.*, COALESCE(stpl.setting_value, stl.setting_value) AS series_title FROM series s
			INNER JOIN homeOMP_unidades_academicas ua ON (s.series_id = ua.unidades_academicas_id)
			LEFT JOIN series_settings stpl ON (s.series_id = stpl.series_id AND stpl.setting_name = ? AND stpl.locale = ?)
			LEFT JOIN series_settings stl ON (s.series_id = stl.series_id AND stl.setting_name = ? AND stl.locale = ?)
			
                        WHERE press_id = ?
			ORDER BY seq',
			$params,
			$rangeInfo
		);

		return new DAOResultFactory($result, $this, '_fromRow');
	}
}
?>
