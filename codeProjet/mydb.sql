-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 06 Juin 2022 à 21:20
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `mydb`
--

-- --------------------------------------------------------

--
-- Structure de la table `interventions`
--

CREATE TABLE IF NOT EXISTS `interventions` (
  `idinterventions` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `users_idusers` int(11) NOT NULL,
  PRIMARY KEY (`idinterventions`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `interventions`
--

INSERT INTO `interventions` (`idinterventions`, `description`, `date`, `status`, `users_idusers`) VALUES
(3, 'Ma tÃ©lÃ© affiche des images flou', '2022-06-06 19:17:34', 0, 12);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`idusers`, `fullname`, `email`, `password`, `role`) VALUES
(1, 'rayane jerbi', 'rayane@gmail.com', 'f42f040056d7351245ee33e97a91c45a704ba5c5', 'ROLE_ADMIN'),
(2, 'Manal Melgou', 'manal@gmail.com', 'd7534d59281a979f11a0e4bc4c2735d635bf3b07', 'ROLE_TECH'),
(3, 'Ashley Ohnona', 'ashley@gmail.com', '782f9b10621e362d5bd0def3a279b5e0908c9ebb', 'ROLE_TECH'),
(4, 'Kamila Dimia', 'kamila@gmail.com', 'e84a716311af5463d3cff99502986220eff464a6', 'ROLE_TECH'),
(5, 'Aladin Baccouche', 'aladin@gmail.com', '2bc75458c71213661aa42ba9badc52862dfd3e44', 'ROLE_USER');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
