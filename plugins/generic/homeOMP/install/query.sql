INSERT INTO `versions` (`major`,`minor`,`revision`,`build`,`date_installed`,`current`,`product_type`,`product`,`product_class_name`,`lazy_load`,`sitewide`)
VALUES ('1', '0', '0', '0', SYSDATE(), '1', 'plugins.generic', 'homeOMP', 'HomeOMPPlugin', '1', '0');

INSERT INTO `plugin_settings`(`plugin_name`, `setting_name`, `setting_value`, `setting_type`) VALUES ('homeOMPplugin','enabled',1,'bool');


INSERT INTO `homeOMP_unidades_academicas` (`unidades_academicas_id`) VALUES
(11),
(12),
(13);
