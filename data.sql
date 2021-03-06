DROP TABLE IF EXISTS `product_rate`;
CREATE TABLE `product_rate` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`rate_value`  INT(10) UNSIGNED NOT NULL,
	`product_id`  INT(10) UNSIGNED NOT NULL,
	`user_id`  INT(10) UNSIGNED,
	`text` TEXT,
	`time`  INT(10) UNSIGNED NOT NULL,
	`browser` TEXT NOT NULL,
	`ip` bigint(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `product_question`;
CREATE TABLE `product_question` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`product_id`  INT(10) UNSIGNED NOT NULL,
	`user_id`  INT(10) UNSIGNED,
	`text` varchar(500) NOT NULL,
	`time`  INT(10) UNSIGNED NOT NULL,
	`browser` TEXT NOT NULL,
	`ip` bigint(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`user_id`  INT(10) UNSIGNED DEFAULT '0',
	`list_product` varchar(5000) NOT NULL,
	`total_price`  INT(10) UNSIGNED NOT NULL,
	`customer_name` varchar(100),
	`customer_address` varchar(300) NOT NULL,
	`customer_phone` varchar(11) NOT NULL,
	`customer_email` varchar(100),
	`comment` varchar(500),
	`status` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
	`ship_type` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
	`browser` TEXT NOT NULL,
	`ip` bigint(11) NOT NULL DEFAULT '0',
	`time`  INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `shop_banner`;
CREATE TABLE `shop_banner` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`img_link` tinytext NOT NULL,
	`text` TEXT,
	`expire`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`time`  INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`text` TEXT NOT NULL,
	`time`  INT(10) UNSIGNED NOT NULL,
	`expire`  INT(10) UNSIGNED DEFAULT '0',
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `discount_code`;
CREATE TABLE `discount_code` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`code` varchar(50) NOT NULL,
	`name` TEXT,
	`user_id`  INT(10) UNSIGNED DEFAULT '0',
	`discount`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`expire`  INT(10) UNSIGNED DEFAULT '0',
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`user_id`  INT(10) UNSIGNED NOT NULL,
	`text` TEXT NOT NULL,
	`link` tinyint NOT NULL,
	`read` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
	`time`  INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`cat_id`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`name` varchar(100) NOT NULL,
	`description` TEXT NOT NULL,
	`short_desc` VARCHAR(500),
	`image` varchar(100) NOT NULL,
	`price_first`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`price_last`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`time`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`rate`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`buy_count`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`available`  INT(1) UNSIGNED NOT NULL DEFAULT '1',
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `product_cat`;
CREATE TABLE `product_cat` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL,
	`parent_id`  INT(10) UNSIGNED,
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	`id`  INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`email` varchar(100) NOT NULL UNIQUE,
	`level` INT(1) UNSIGNED NOT NULL DEFAULT '0',
	`fullname` varchar(100) NOT NULL,
	`phone` varchar(11) NOT NULL,
	`sex` varchar(1) NOT NULL,
	`address` varchar(300) NOT NULL,
	`session_id` varchar(256),
	`password` varchar(256) NOT NULL,
	`created_time`  INT(10) UNSIGNED NOT NULL,
	`last_login`  INT(10) UNSIGNED DEFAULT '0',
	`failed_login` INT(1) UNSIGNED DEFAULT '0',
	`browser` TEXT NOT NULL,
	`ip` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`ip_via_proxy` bigint(11) DEFAULT '0',
	PRIMARY KEY (`id`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8mb4;


