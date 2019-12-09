--PARTIE 1
--Exercice 1
-- création d'une base de données languages
CREATE DATABASE `languages`;
-- création de la bd languages si elle ,n'existe pas (bonne pratique)
CREATE DATABASE IF NOT EXISTS `languages`;
-- Exercice 2 (correction)
CREATE DATABASE 'webDevelopment' CHARACTER SET 'utf8';
-- ou:
CREATE DATABASE 'webDevelopment' CHARSET = 'utfe8';
-- Exercice 3
CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET 'utf8';
-- Exercice 4
DROP DATABASE `languages`;
--PARTIE 2
-- Exercice 1
CREATE TABLE `languages` ( `id` INT NOT NULL , `languages` VARCHAR(40) NOT NULL , PRIMARY KEY (`id`), FULLTEXT (`tool`(40))) ENGINE = MyISAM;
-- Exercice 3
USE `webDevelopment`;
CREATE TABLE `tools`(id INT AUTO_INCREMENT PRIMARY KEY, tool VARCHAR(255));
-- Exercice 4
DROP TABLE `tools`;
-- Exercice 5
USE `webDevelopment`;
CREATE TABLE `clients`
(id INT AUTO_INCREMENT PRIMARY KEY, lastname VARCHAR(50), firstname VARCHAR(50), birthdate DATE, address VARCHAR(100), phone INT, mail VARCHAR(150));
-- PARTIE 3
-- Exercice 1
ALTER TABLE `languages`
ADD COLUMN (Versions VARCHAR (50));
-- Exercice 2
ALTER TABLE `frameworks`
ADD COLUMN (Version INT);
-- Exercice 3
USE `webDevelopment`;
ALTER TABLE `languages` CHANGE languages version VARCHAR (50);
-- Exercice 4
ALTER TABLE `languages`
MODIFY version VARCHAR(50);
-- Exercice 5
ALTER TABLE `clients` CHANGE `PhoneNumber` `PhoneNumber` VARCHAR(10);
--PARTIE 4
-- Exercice 1 (ne fonctionne pas)
INSERT INTO `languages` (`language`,`version`)
VALUES ('JavaScript', 'version 5'),
('PHP', 'version 5.2'),
('PHP', 'version 5.4'),
('HTML', 'version 5.1'),
('JavaScript', 'version 6'),
('JavaScript', 'version 7'),
('JavaScript', 'version 8'),
('PHP', 'version 7');
