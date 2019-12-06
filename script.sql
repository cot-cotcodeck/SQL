--PARTIE 1
--Exercice 1
-- création d'une base de données languages
CREATE DATABASE `languages`;
-- création de la bd languages si elle ,n'existe pas (bonne pratique)
CREATE DATABASE IF NOT EXISTS `languages`;
-- Exercice 3
CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET 'utf8'
-- Exercice 4
DROP DATABASE `languages`
--PARTIE 2
-- Exercice 1
CREATE TABLE `languages` ( `id` INT NOT NULL , `languages` VARCHAR(40) NOT NULL , PRIMARY KEY (`id`), FULLTEXT (`tool`(40))) ENGINE = MyISAM;
-- Exercice 3
USE `webDevelopment`;
CREATE TABLE `tools`(id INT AUTO_INCREMENT PRIMARY KEY, tool VARCHAR(255));
-- Exercice 4
DROP TABLE `tools`;
