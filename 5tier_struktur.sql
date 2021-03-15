-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 08. Mrz 2021 um 11:39
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `ig2_3tier_automarken`
--
CREATE DATABASE IF NOT EXISTS `ig2_3tier_automarken` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ig2_3tier_automarken`;

DELIMITER $$
--
-- Prozeduren
--
DROP PROCEDURE IF EXISTS `sps_DemoPersonen`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sps_DemoPersonen` (IN `Username` VARCHAR(250), IN `password` VARCHAR(250), IN `email` VARCHAR(250), IN `mobile` VARCHAR(250), IN `plz` INT(250), IN `wohnort` VARCHAR(250))  BEGIN
INSERT INTO `tbl_uebung3` (`Username`, `password`, `email`, `mobile`, `plz`, `wohnort`) 
VALUES (Username, password, email, mobile, plz, wohnort);
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbl_uebung3`
--

DROP TABLE IF EXISTS `tbl_uebung3`;
CREATE TABLE `tbl_uebung3` (
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `plz` int(250) NOT NULL,
  `wohnort` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
