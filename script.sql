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
INSERT INTO `languages` (version, Versions)
VALUES
('JavaScript', 5),
('PHP', 5.2),
('PHP', 5.4),
('HTML', 5.1),
('JavaScript',6),
('JavaScript',7),
('JavaScript', 8),
('PHP', 7);
-- Exercice 2 (ne fonctionne pas)
INSERT INTO `frameworks`( tool, Version)
VALUES
('Symfony', 2.8),
('Symfony', 3),
('Jquery',1.6),
('Jquery', 2.10);
--PARTIE 5
--Exercice 1
