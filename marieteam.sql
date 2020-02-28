-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 05 mai 2019 à 20:46
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `marieteam`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `nomAdmin` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `datedebut` int(11) NOT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idAdmin`, `nomAdmin`, `password`, `datedebut`) VALUES
(1, 'test', '$2y$10$3vctAPmSDzZQzMIgXLxjFubk7UOt95l9PefO93paMqB5PdUIzhuae', 1545572725),
(2, 'new', '$2y$10$kqYHaWIBiA/g5pROZJUZXOJ8RPtqgvT9le3QlAFGooaA7bBRatvjC', 1545573900),
(4, 'Clement', '$2y$10$csZsz7adDS5vp.AwWJ47seKMi7tXSJ8BWMhas3y9RlEmRiEuxCK2W', 1545917571),
(5, 'NotifTest', '$2y$10$lYZpvsCY752NxANETLZhFeR9aSbt4iWu0qERL.4KElitzhQlSOjIO', 1545922222),
(6, 'NotifTest2', '$2y$10$tlbkUyymdkwwsWvK0AfU9OGPugcLmAvnofk6pw3f7rH1OQvI6k4fG', 1545922474);

-- --------------------------------------------------------

--
-- Structure de la table `bateau`
--

DROP TABLE IF EXISTS `bateau`;
CREATE TABLE IF NOT EXISTS `bateau` (
  `idBateau` varchar(11) NOT NULL,
  `nom` text NOT NULL,
  `typeBateau` varchar(50) NOT NULL,
  `capaciteBateau` int(11) NOT NULL,
  `CapaciteVoiture` int(11) NOT NULL,
  `CapaciteCamion` int(11) NOT NULL,
  `Longeur` double NOT NULL,
  `Largeur` double NOT NULL,
  `vitesse` double NOT NULL,
  `Image` text NOT NULL,
  PRIMARY KEY (`idBateau`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bateau`
--

INSERT INTO `bateau` (`idBateau`, `nom`, `typeBateau`, `capaciteBateau`, `CapaciteVoiture`, `CapaciteCamion`, `Longeur`, `Largeur`, `vitesse`, `Image`) VALUES
('V1', 'Titanic', 'Voyageur', 5000, 0, 0, 190, 50.5, 25.6, 'image6.png'),
('V2', 'Corsica', 'Voyageur', 1000, 0, 0, 150, 52.5, 23, 'image5.png'),
('V3', 'Le Var', 'Voyageur', 10000, 0, 0, 15.6, 74, 23, 'image6.png'),
('V4', 'L\'archer', 'Voyageur', 2000, 0, 0, 20, 17.5, 18, 'Image6.png'),
('V5', 'L\'adroit', 'Voyageur', 8000, 0, 0, 150, 17.5, 16, 'image6.png');

-- --------------------------------------------------------

--
-- Structure de la table `bateau_equipement`
--

DROP TABLE IF EXISTS `bateau_equipement`;
CREATE TABLE IF NOT EXISTS `bateau_equipement` (
  `idEquipement` varchar(255) NOT NULL,
  `libelle` text NOT NULL,
  `idBateau` varchar(255) NOT NULL,
  PRIMARY KEY (`idEquipement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bateau_equipement`
--

INSERT INTO `bateau_equipement` (`idEquipement`, `libelle`, `idBateau`) VALUES
('C2', 'corde', 'V2'),
('C3', 'bateau sauvetage', 'V3'),
('e5', 'treuille', 'V5');

-- --------------------------------------------------------

--
-- Structure de la table `capitaine`
--

DROP TABLE IF EXISTS `capitaine`;
CREATE TABLE IF NOT EXISTS `capitaine` (
  `idCapitaine` int(11) NOT NULL AUTO_INCREMENT,
  `nomCapitaine` text NOT NULL,
  `prenomCapitaine` text NOT NULL,
  `dateDebut` int(11) NOT NULL,
  `emailCapitaine` text NOT NULL,
  `telephoneCapitaine` int(11) NOT NULL,
  PRIMARY KEY (`idCapitaine`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `capitaine`
--

INSERT INTO `capitaine` (`idCapitaine`, `nomCapitaine`, `prenomCapitaine`, `dateDebut`, `emailCapitaine`, `telephoneCapitaine`) VALUES
(5, 'Smith', 'John', 0, 'smith.john@marieteam.fr', 612345678),
(6, 'Lan', 'Yui', 0, 'lan.yui@marieteam.fr', 623456789),
(7, 'Pleb', 'Steve', 0, 'pleb.steve@marieteam.fr', 634567890);

-- --------------------------------------------------------

--
-- Structure de la table `categorietarification`
--

DROP TABLE IF EXISTS `categorietarification`;
CREATE TABLE IF NOT EXISTS `categorietarification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorietarification`
--

INSERT INTO `categorietarification` (`id`, `libelle`) VALUES
(1, 'Passager'),
(2, 'VÃ©h.inf.2m'),
(3, 'VÃ©h.sup.2m');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `mail` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `dateInscription` int(11) NOT NULL,
  `fidelite` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `nom`, `prenom`, `mail`, `password`, `dateInscription`, `fidelite`) VALUES
(10, 'dev', 'clem', 'clem@dev', '$2y$10$/R8kPNdm5tckz92BNb508uXDSbtUHtsCuLPvBFsZ3jh8V7nA6rczS', 1556898850, 2100);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `Nom` varchar(50) NOT NULL,
  `Objet` varchar(50) NOT NULL,
  `Message` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`Nom`, `Objet`, `Message`, `Email`, `id`) VALUES
('test', 'test', 'test\r\n', 'test@test.fr', 1),
('test', 'test', 'test\r\n', 'test@test.fr', 2),
('test', 'test', 'test', 'test@test.fr', 3),
('test', 'test', 'test', 'test@test.fr', 4),
('test', 'test', 'test', 'test@test.fr', 5),
('test', 'test', 'test', 'test@test.fr', 6),
('test', 'test', 'test', 'test@test.fr', 7),
('test', 'test', 'test', 'test@test.fr', 8),
('test', 'test', 'test', 'test@test.fr', 9),
('test', 'test', 'test', 'test@test.fr', 10),
('test', 'test', 'test', 'test@test.fr', 11),
('test', 'test', 'test', 'test@test.fr', 12),
('hello', 'hello', 'hello', 'hello@hello.fr', 13),
('hello', 'hello', 'hello', 'hello@hello.fr', 14),
('hello', 'hello', 'hello', 'hello@hello.fr', 15),
('hello', 'hello', 'hello', 'hello@hello.fr', 16),
('hello', 'hello', 'hello', 'hello@hello.fr', 17),
('hello', 'hello', 'hello', 'hello@hello.fr', 18),
('hello', 'hello', 'hello', 'hello@hello.fr', 19),
('hello', 'hello', 'hello', 'hello@hello.fr', 20);

-- --------------------------------------------------------

--
-- Structure de la table `iledeservie`
--

DROP TABLE IF EXISTS `iledeservie`;
CREATE TABLE IF NOT EXISTS `iledeservie` (
  `idIle` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `nomPort` text NOT NULL,
  PRIMARY KEY (`idIle`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `iledeservie`
--

INSERT INTO `iledeservie` (`idIle`, `nom`, `nomPort`) VALUES
(7, 'Quiberon', 'Port de Quiberon'),
(8, 'Le Palais', 'Port du Palais'),
(9, 'Sauzon', 'Port de Sauzon'),
(10, 'Vannes', 'Port de Vannes'),
(11, 'St Gildas', 'Port de St Gildas'),
(12, 'Lorient', 'Port de Lorient'),
(13, 'Port-Tudy', 'Port-Tudy');

-- --------------------------------------------------------

--
-- Structure de la table `liaison`
--

DROP TABLE IF EXISTS `liaison`;
CREATE TABLE IF NOT EXISTS `liaison` (
  `idLiaison` int(11) NOT NULL,
  `portDepart` varchar(50) NOT NULL,
  `portArriver` varchar(50) NOT NULL,
  `distance` double NOT NULL DEFAULT '0',
  `idSecteur` int(11) NOT NULL,
  PRIMARY KEY (`idLiaison`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `liaison`
--

INSERT INTO `liaison` (`idLiaison`, `portDepart`, `portArriver`, `distance`, `idSecteur`) VALUES
(11, 'Le Palais', 'Vannes', 25.1, 1),
(15, 'Quiberon', 'Le Palais', 8.3, 1),
(16, 'Quiberon', 'Sauzon', 8, 1),
(17, 'Sauzon', 'Quiberon', 7.9, 1),
(19, 'Vannes', 'Le Palais', 23.7, 1),
(21, 'Lorient', 'Port-Tudy', 7.7, 3),
(22, 'Port-Tudy', 'Lorient', 7.4, 3),
(24, 'Le Palais', 'Quiberon', 9, 1),
(25, 'Quiberon', 'St Gildas', 8.8, 2),
(30, 'St Gildas', 'Quiberon', 8.8, 2);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomQui` text NOT NULL,
  `Libelle` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `nomQui`, `Libelle`) VALUES
(50, 'Clement', 'Secteur : Belle-Ile-en-Mer crÃ©Ã©'),
(51, 'Clement', 'Secteur : Houat crÃ©Ã©'),
(52, 'Clement', 'Secteur : Ile de Groix crÃ©Ã©'),
(53, 'Clement', 'ILE : Quiberon crÃ©Ã©e'),
(54, 'Clement', 'ILE : Le Palais crÃ©Ã©e'),
(55, 'Clement', 'ILE : Sauzon crÃ©Ã©e'),
(56, 'Clement', 'ILE : Vannes crÃ©Ã©e'),
(57, 'Clement', 'ILE : St Gildas crÃ©Ã©e'),
(58, 'Clement', 'ILE : Lorient crÃ©Ã©e'),
(59, 'Clement', 'ILE : Port-Tudy crÃ©Ã©e'),
(60, 'Clement', 'LIAISON : Quiberon->Le Palais crÃ©Ã©e'),
(61, 'Clement', 'LIAISON : Le Palais->Quiberon crÃ©Ã©e'),
(62, 'Clement', 'LIAISON : Le Palais->Quiberon crÃ©Ã©e'),
(63, 'Clement', 'LIAISON : Le Palais->Quiberon crÃ©Ã©e'),
(64, 'Clement', 'LIAISON : Quiberon->Sauzon crÃ©Ã©e'),
(65, 'Clement', 'LIAISON : Sauzon->Quiberon crÃ©Ã©e'),
(66, 'Clement', 'LIAISON : Vannes->Le Palais crÃ©Ã©e'),
(67, 'Clement', 'LIAISON : Le Palais->Vannes crÃ©Ã©e'),
(68, 'Clement', 'LIAISON : Quiberon->St Gildas crÃ©Ã©e'),
(69, 'Clement', 'LIAISON : St Gildas->Quiberon crÃ©Ã©e'),
(70, 'Clement', 'LIAISON : Lorient->Port-Tudy crÃ©Ã©e'),
(71, 'Clement', 'LIAISON : Port-Tudy->Lorient crÃ©Ã©e'),
(72, 'Clement', 'ADMIN : Clement crÃ©Ã©'),
(73, 'Clement', 'ADMIN : Clement crÃ©Ã©'),
(74, 'Clement', 'ADMIN : Clement crÃ©Ã©'),
(75, '1', 'ADMIN : Clement crÃ©Ã©'),
(76, '1', 'ADMIN : Clement crÃ©Ã©'),
(77, '1', 'ADMIN : Clement crÃ©Ã©'),
(78, '1', 'ADMIN : Clement crÃ©Ã©'),
(79, '2', 'ADMIN : Clement crÃ©Ã©'),
(80, '2', 'ADMIN : Clement crÃ©Ã©'),
(81, '3', 'ADMIN : Clement crÃ©Ã©'),
(82, '3', 'ADMIN : Clement crÃ©Ã©'),
(83, '3', 'ADMIN : Clement crÃ©Ã©'),
(84, 'Clement', 'Voyage : Quiberon -> Le Palais crÃ©Ã©');

-- --------------------------------------------------------

--
-- Structure de la table `periode`
--

DROP TABLE IF EXISTS `periode`;
CREATE TABLE IF NOT EXISTS `periode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `idLiaison` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `periode`
--

INSERT INTO `periode` (`id`, `dateDebut`, `dateFin`, `idLiaison`) VALUES
(5, '2018-09-01', '2019-06-15', 15),
(6, '2019-06-16', '2019-09-15', 15),
(7, '2019-09-16', '2020-05-31', 15);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `idReservation` int(11) NOT NULL AUTO_INCREMENT,
  `idClient` int(11) NOT NULL,
  `idTraverse` int(11) NOT NULL,
  `libelleReservation` text NOT NULL,
  `prix` double DEFAULT '0',
  `periode` text NOT NULL,
  `idTarif` int(11) NOT NULL,
  `libelleTarification` text NOT NULL,
  PRIMARY KEY (`idReservation`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`idReservation`, `idClient`, `idTraverse`, `libelleReservation`, `prix`, `periode`, `idTarif`, `libelleTarification`) VALUES
(34, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 0, 'Ticket Enfant'),
(35, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 0, 'Ticket Enfant'),
(36, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 0, 'Ticket Voiture inf.4m'),
(37, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 0, 'Ticket Voiture inf.4m'),
(38, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 0, 'Ticket Voiture inf.5m'),
(39, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 0, 'Ticket Voiture inf.5m'),
(40, 10, 19, 'Trajet Quiberon -> Le Palais', 189, '05/05/2019', 0, 'Ticket Fourgon'),
(41, 10, 19, 'Trajet Quiberon -> Le Palais', 205, '05/05/2019', 0, 'Ticket Camping Car'),
(42, 10, 19, 'Trajet Quiberon -> Le Palais', 268, '05/05/2019', 0, 'Ticket Camion'),
(43, 10, 19, 'Trajet Quiberon -> Le Palais', 18, '05/05/2019', 1, 'Ticket adulte'),
(44, 10, 19, 'Trajet Quiberon -> Le Palais', 18, '05/05/2019', 1, 'Ticket adulte'),
(45, 10, 19, 'Trajet Quiberon -> Le Palais', 18, '05/05/2019', 1, 'Ticket adulte'),
(46, 10, 19, 'Trajet Quiberon -> Le Palais', 11.1, '05/05/2019', 1, 'Ticket Junior'),
(47, 10, 19, 'Trajet Quiberon -> Le Palais', 11.1, '05/05/2019', 1, 'Ticket Junior'),
(48, 10, 19, 'Trajet Quiberon -> Le Palais', 11.1, '05/05/2019', 1, 'Ticket Junior'),
(49, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 1, 'Ticket Enfant'),
(50, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 1, 'Ticket Enfant'),
(51, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 1, 'Ticket Enfant'),
(52, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 2, 'Ticket Voiture inf.4m'),
(53, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 2, 'Ticket Voiture inf.4m'),
(54, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 2, 'Ticket Voiture inf.4m'),
(55, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 2, 'Ticket Voiture inf.5m'),
(56, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 2, 'Ticket Voiture inf.5m'),
(57, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 2, 'Ticket Voiture inf.5m'),
(58, 10, 19, 'Trajet Quiberon -> Le Palais', 189, '05/05/2019', 3, 'Ticket Fourgon'),
(59, 10, 19, 'Trajet Quiberon -> Le Palais', 189, '05/05/2019', 3, 'Ticket Fourgon'),
(60, 10, 19, 'Trajet Quiberon -> Le Palais', 189, '05/05/2019', 3, 'Ticket Fourgon'),
(61, 10, 19, 'Trajet Quiberon -> Le Palais', 205, '05/05/2019', 3, 'Ticket Camping Car'),
(62, 10, 19, 'Trajet Quiberon -> Le Palais', 205, '05/05/2019', 3, 'Ticket Camping Car'),
(63, 10, 19, 'Trajet Quiberon -> Le Palais', 268, '05/05/2019', 3, 'Ticket Camion'),
(64, 10, 19, 'Trajet Quiberon -> Le Palais', 268, '05/05/2019', 3, 'Ticket Camion'),
(65, 10, 19, 'Trajet Quiberon -> Le Palais', 18, '05/05/2019', 1, 'Ticket adulte'),
(66, 10, 19, 'Trajet Quiberon -> Le Palais', 18, '05/05/2019', 1, 'Ticket adulte'),
(67, 10, 19, 'Trajet Quiberon -> Le Palais', 18, '05/05/2019', 1, 'Ticket adulte'),
(68, 10, 19, 'Trajet Quiberon -> Le Palais', 18, '05/05/2019', 1, 'Ticket adulte'),
(69, 10, 19, 'Trajet Quiberon -> Le Palais', 18, '05/05/2019', 1, 'Ticket adulte'),
(70, 10, 19, 'Trajet Quiberon -> Le Palais', 11.1, '05/05/2019', 1, 'Ticket Junior'),
(71, 10, 19, 'Trajet Quiberon -> Le Palais', 11.1, '05/05/2019', 1, 'Ticket Junior'),
(72, 10, 19, 'Trajet Quiberon -> Le Palais', 11.1, '05/05/2019', 1, 'Ticket Junior'),
(73, 10, 19, 'Trajet Quiberon -> Le Palais', 11.1, '05/05/2019', 1, 'Ticket Junior'),
(74, 10, 19, 'Trajet Quiberon -> Le Palais', 11.1, '05/05/2019', 1, 'Ticket Junior'),
(75, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 2, 'Ticket Voiture inf.4m'),
(76, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 2, 'Ticket Voiture inf.4m'),
(77, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 2, 'Ticket Voiture inf.4m'),
(78, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 2, 'Ticket Voiture inf.4m'),
(79, 10, 19, 'Trajet Quiberon -> Le Palais', 5.6, '05/05/2019', 2, 'Ticket Voiture inf.4m'),
(80, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 2, 'Ticket Voiture inf.5m'),
(81, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 2, 'Ticket Voiture inf.5m'),
(82, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 2, 'Ticket Voiture inf.5m'),
(83, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 2, 'Ticket Voiture inf.5m'),
(84, 10, 19, 'Trajet Quiberon -> Le Palais', 86, '05/05/2019', 2, 'Ticket Voiture inf.5m'),
(85, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 3, 'Ticket Fourgon'),
(86, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 3, 'Ticket Fourgon'),
(87, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 3, 'Ticket Fourgon'),
(88, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 3, 'Ticket Fourgon'),
(89, 10, 19, 'Trajet Quiberon -> Le Palais', 129, '05/05/2019', 3, 'Ticket Fourgon'),
(90, 10, 19, 'Trajet Quiberon -> Le Palais', 189, '05/05/2019', 3, 'Ticket Camping Car'),
(91, 10, 19, 'Trajet Quiberon -> Le Palais', 189, '05/05/2019', 3, 'Ticket Camping Car'),
(92, 10, 19, 'Trajet Quiberon -> Le Palais', 189, '05/05/2019', 3, 'Ticket Camping Car'),
(93, 10, 19, 'Trajet Quiberon -> Le Palais', 189, '05/05/2019', 3, 'Ticket Camping Car'),
(94, 10, 19, 'Trajet Quiberon -> Le Palais', 189, '05/05/2019', 3, 'Ticket Camping Car');

--
-- Déclencheurs `reservation`
--
DROP TRIGGER IF EXISTS `client_fidelite`;
DELIMITER $$
CREATE TRIGGER `client_fidelite` AFTER INSERT ON `reservation` FOR EACH ROW UPDATE client
SET fidelite = fidelite+25
WHERE idClient = NEW.idClient
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `subs_place`;
DELIMITER $$
CREATE TRIGGER `subs_place` AFTER INSERT ON `reservation` FOR EACH ROW BEGIN
	IF NEW.idTarif = 1 THEN
		UPDATE traverse
		SET placeDispo = placeDispo-1
		WHERE idTraverse = NEW.idTraverse;
	END IF;
	IF NEW.idTarif = 2 THEN
		UPDATE traverse
    	SET placeDispoV = placeDispoV-1
    	WHERE idTraverse = NEW.idTraverse;
	END IF;
	IF NEW.idTarif = 3 THEN
		UPDATE traverse
    	SET placeDispoC = placeDispoC-1
    	WHERE idTraverse = NEW.idTraverse;
	END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

DROP TABLE IF EXISTS `secteur`;
CREATE TABLE IF NOT EXISTS `secteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NomSecteur` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `secteur`
--

INSERT INTO `secteur` (`id`, `NomSecteur`) VALUES
(1, 'Belle-Ile-en-Mer'),
(2, 'Houat'),
(3, 'Ile de Groix');

-- --------------------------------------------------------

--
-- Structure de la table `tarification`
--

DROP TABLE IF EXISTS `tarification`;
CREATE TABLE IF NOT EXISTS `tarification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idType` int(11) NOT NULL,
  `idPeriode` int(11) NOT NULL,
  `tarification` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tarification`
--

INSERT INTO `tarification` (`id`, `idType`, `idPeriode`, `tarification`) VALUES
(4, 2, 5, 18),
(7, 2, 5, 11.1),
(8, 2, 5, 5.6),
(16, 7, 5, 86),
(17, 8, 5, 129),
(18, 9, 5, 189),
(19, 10, 5, 205),
(20, 11, 5, 268);

-- --------------------------------------------------------

--
-- Structure de la table `traverse`
--

DROP TABLE IF EXISTS `traverse`;
CREATE TABLE IF NOT EXISTS `traverse` (
  `idTraverse` int(11) NOT NULL AUTO_INCREMENT,
  `nomTraverse` text NOT NULL,
  `date` text NOT NULL,
  `heureDepart` text NOT NULL,
  `heureArrive` text NOT NULL,
  `idBateau` varchar(11) NOT NULL,
  `idCapitaine` int(11) NOT NULL,
  `idLiaison` int(11) NOT NULL,
  `placeDispo` int(11) NOT NULL DEFAULT '0',
  `placeDispoV` int(11) NOT NULL,
  `placeDispoC` int(11) NOT NULL,
  PRIMARY KEY (`idTraverse`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `traverse`
--

INSERT INTO `traverse` (`idTraverse`, `nomTraverse`, `date`, `heureDepart`, `heureArrive`, `idBateau`, `idCapitaine`, `idLiaison`, `placeDispo`, `placeDispoV`, `placeDispoC`) VALUES
(19, 'Quiberon -> Le Palais', '2019-05-05', '10h30', '14h30', 'V1', 5, 15, 4990, 90, 90);

-- --------------------------------------------------------

--
-- Structure de la table `typetarif`
--

DROP TABLE IF EXISTS `typetarif`;
CREATE TABLE IF NOT EXISTS `typetarif` (
  `id` int(11) NOT NULL,
  `libelle` text NOT NULL,
  `idCategorie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typetarif`
--

INSERT INTO `typetarif` (`id`, `libelle`, `idCategorie`) VALUES
(1, 'Adulte', 1),
(5, 'Junior 8 Ã  18 ans', 1),
(6, 'Enfant 0 Ã  7 ans', 1),
(7, 'Voiture long.in.4m', 2),
(8, 'Voiture long.inf.5m', 2),
(9, 'Fourgon', 3),
(10, 'Camping Car', 3),
(11, 'Camion', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
