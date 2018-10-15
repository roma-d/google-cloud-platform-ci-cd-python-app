CREATE USER 'DB_USER'@'%' IDENTIFIED BY  'DB_PASS';
GRANT USAGE ON * . * TO  'DB_USER'@'%' IDENTIFIED BY  'DB_PASS' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;
CREATE DATABASE IF NOT EXISTS  `DB_NAME` CHARACTER SET UTF8;
GRANT ALL PRIVILEGES ON  `DB_NAME` . * TO  'DB_USER'@'%';

USE `DB_NAME`;
CREATE TABLE `user` (
    `id` integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `email` varchar(75) NOT NULL,
    `password` varchar(128) NOT NULL
);
CREATE TABLE `note` (
	`id` integer PRIMARY KEY AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`text` text NOT NULL,
	`user_id` integer NOT NULL,
	`pad_id` integer,
	`created_at` datetime NOT NULL,
	`updated_at` datetime NOT NULL
);
CREATE TABLE `pad` (
	`id` integer PRIMARY KEY AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`user_id` integer NOT NULL
);
