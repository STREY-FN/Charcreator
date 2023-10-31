ALTER TABLE `users`
	ADD COLUMN `skin` longtext DEFAULT NULL,
	ADD COLUMN `firstname` varchar(50) DEFAULT '',
	ADD COLUMN `lastname` varchar(50) DEFAULT '',
	ADD COLUMN `dateofbirth` varchar(25) DEFAULT '',
	ADD COLUMN `sex` varchar(10) DEFAULT '',
    ADD COLUMN `height` varchar(5) DEFAULT '',
    ADD COLUMN `ldn` varchar(50) NOT NULL DEFAULT ''
;