INSERT INTO `versions` (`major`,`minor`,`revision`,`build`,`date_installed`,`current`,`product_type`,`product`,`product_class_name`,`lazy_load`,`sitewide`)
VALUES ('1', '0', '0', '0', SYSDATE(), '1', 'plugins.generic', 'statsAdmin', 'StatsAdminPlugin', '1', '0');

INSERT INTO `plugin_settings`(`plugin_name`, `locale`, `journal_id`, `setting_name`, `setting_value`, `setting_type`) VALUES ('statsAdminplugin','' ,0,'enabled',1,'bool');


INSERT INTO `statsAdminPlugins_field` (`field_id`, `name`, `field_value`, `type`, `defaultValue`) VALUES
(1, 'date_last_login', '', 'date', ''),
(2, 'value', '', 'input', NULL),
(3, 'anio_from', '    date_submitted', 'input', NULL),
(4, 'anio_to', '    date_submitted', 'input', NULL);


INSERT INTO `statsAdminPlugins_stats` (`stats_id`, `key_value`, `enabled`, `name_class`, `type_chart`, `state_enabled`, `dashboard_order`) VALUES
(1, 'active_users_for_journals', 1, 'UserActiveStats', '', 0, ''),
(2, 'journal_more_active', 1, 'JournalsActiveStats', '', 0, ''),
(3, 'count_of_users_by_type_journals', 1, 'UserTypeStats', '', 0, ''),
(4, 'count_of_users_by_journals', 1, 'UsersByJournalStats', '', 0, '');

INSERT INTO `statsAdminPlugins_stats_fields` (`field_id`, `stats_id`, `value`) VALUES
(1, 1, '2014-06-05'),
(3, 2, '2004'),
(4, 2, '2015');
