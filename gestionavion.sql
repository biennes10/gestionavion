-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 14 avr. 2018 à 17:18
-- Version du serveur :  10.1.25-MariaDB
-- Version de PHP :  7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestionavion`
--

-- --------------------------------------------------------

--
-- Structure de la table `avion`
--

CREATE TABLE `avion` (
  `num` int(11) NOT NULL,
  `dateMiseEnService` date DEFAULT NULL,
  `nbHeuresVol` int(11) DEFAULT NULL,
  `localisation` varchar(25) DEFAULT NULL,
  `nomTypeAvion` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avion`
--

INSERT INTO `avion` (`num`, `dateMiseEnService`, `nbHeuresVol`, `localisation`, `nomTypeAvion`) VALUES
(1, '2015-09-05', 253, 'Paris', 'Airbus A320'),
(2, '2001-01-22', 534, 'Nantes', 'Airbus A321'),
(3, '2011-10-09', 415, 'Bordeaux', 'Boeing 717'),
(4, '2000-07-21', 130, 'Toulouse', 'Boeing 757'),
(5, '2011-05-18', 498, 'Marseille', 'Airbus A330'),
(6, '1996-11-20', 323, 'Lyon', 'Boeing 767'),
(7, '1996-07-30', 426, 'Strasbourg', 'Boeing 777'),
(8, '2001-05-07', 898, 'Nice', 'Airbus A320'),
(9, '2015-11-12', 366, 'Montpellier', 'Boeing 747'),
(10, '2004-09-04', 717, 'Nimes', 'Boeing 727'),
(11, '2014-07-26', 634, 'Dijon', 'Airbus A330'),
(12, '2011-08-31', 427, 'Lille', 'Airbus A321'),
(13, '1996-09-10', 853, 'Caen', 'Boeing 757'),
(14, '2010-11-08', 692, 'Perpignan', 'Boeing 777'),
(15, '2006-10-10', 434, 'Nimes', 'Boeing 737'),
(16, '2006-05-23', 311, 'Marseille', 'Airbus A320'),
(17, '2010-06-27', 506, 'Bordeaux', 'Boeing 777'),
(18, '1996-08-27', 748, 'Toulouse', 'Airbus A330'),
(19, '2012-11-12', 784, 'Paris', 'Boeing 727'),
(20, '2005-09-14', 227, 'Lille', 'Boeing 747'),
(21, '2003-07-02', 352, 'Dijon', 'Boeing 767'),
(22, '1996-05-23', 469, 'Montpellier', 'Airbus A321'),
(23, '2017-01-25', 974, 'Paris', 'Boeing 747'),
(24, '2001-04-09', 409, 'Caen', 'Boeing 757'),
(25, '2013-02-08', 209, 'Perpignan', 'Boeing 737'),
(26, '2002-10-23', 315, 'Strasbourg', 'Airbus A330'),
(27, '2010-04-11', 878, 'Paris', 'Boeing 747'),
(28, '1997-11-06', 144, 'Marseille', 'Boeing 767'),
(29, '2010-09-26', 678, 'Lyon', 'Airbus A330'),
(30, '1996-08-25', 991, 'Lyon', 'Boeing 747');

-- --------------------------------------------------------

--
-- Structure de la table `aviontypepersonnel`
--

CREATE TABLE `aviontypepersonnel` (
  `idType` int(10) NOT NULL,
  `nomTypeAvion` varchar(25) NOT NULL,
  `qte` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `aviontypepersonnel`
--

INSERT INTO `aviontypepersonnel` (`idType`, `nomTypeAvion`, `qte`) VALUES
(1, 'Airbus A320', 4),
(1, 'Airbus A321', 3),
(1, 'Airbus A330', 2),
(1, 'Boeing 717', 4),
(1, 'Boeing 727', 3),
(1, 'Boeing 737', 4),
(1, 'Boeing 747', 4),
(1, 'Boeing 757', 2),
(1, 'Boeing 767', 4),
(1, 'Boeing 777', 4),
(2, 'Airbus A320', 4),
(2, 'Airbus A321', 3),
(2, 'Airbus A330', 2),
(2, 'Boeing 717', 3),
(2, 'Boeing 727', 3),
(2, 'Boeing 737', 4),
(2, 'Boeing 747', 3),
(2, 'Boeing 757', 4),
(2, 'Boeing 767', 2),
(2, 'Boeing 777', 2),
(3, 'Airbus A320', 3),
(3, 'Airbus A321', 1),
(3, 'Airbus A330', 1),
(3, 'Boeing 717', 2),
(3, 'Boeing 727', 1),
(3, 'Boeing 737', 1),
(3, 'Boeing 747', 3),
(3, 'Boeing 757', 1),
(3, 'Boeing 767', 1),
(3, 'Boeing 777', 4),
(4, 'Airbus A320', 4),
(4, 'Airbus A321', 3),
(4, 'Airbus A330', 4),
(4, 'Boeing 717', 3),
(4, 'Boeing 727', 1),
(4, 'Boeing 737', 2),
(4, 'Boeing 747', 2),
(4, 'Boeing 757', 2),
(4, 'Boeing 767', 4),
(4, 'Boeing 777', 2);

-- --------------------------------------------------------

--
-- Structure de la table `etreexpert`
--

CREATE TABLE `etreexpert` (
  `numPers` int(11) NOT NULL,
  `nomType` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etreexpert`
--

INSERT INTO `etreexpert` (`numPers`, `nomType`) VALUES
(1, 'Airbus A320'),
(1, 'Airbus A330'),
(1, 'Boeing 747'),
(2, 'Airbus A321'),
(2, 'Boeing 757'),
(3, 'Airbus A330'),
(3, 'Boeing 767'),
(4, 'Boeing 717'),
(4, 'Boeing 777'),
(5, 'Airbus A320'),
(5, 'Boeing 717'),
(5, 'Boeing 727'),
(5, 'Boeing 777'),
(6, 'Airbus A321'),
(6, 'Boeing 727'),
(6, 'Boeing 737'),
(7, 'Airbus A330'),
(7, 'Boeing 747'),
(8, 'Airbus A321'),
(8, 'Boeing 717'),
(8, 'Boeing 737'),
(8, 'Boeing 757'),
(9, 'Boeing 727'),
(9, 'Boeing 767'),
(10, 'Boeing 737'),
(10, 'Boeing 777'),
(11, 'Airbus A320'),
(11, 'Boeing 747'),
(12, 'Airbus A321'),
(12, 'Boeing 757'),
(13, 'Airbus A330'),
(13, 'Boeing 767'),
(14, 'Boeing 717'),
(14, 'Boeing 777'),
(15, 'Airbus A320'),
(15, 'Boeing 727'),
(16, 'Airbus A321'),
(16, 'Boeing 737'),
(17, 'Airbus A330'),
(17, 'Boeing 717'),
(17, 'Boeing 747'),
(18, 'Boeing 717'),
(18, 'Boeing 757'),
(19, 'Boeing 727'),
(19, 'Boeing 767'),
(20, 'Boeing 727'),
(20, 'Boeing 737'),
(20, 'Boeing 777'),
(21, 'Airbus A320'),
(21, 'Boeing 747'),
(22, 'Airbus A321'),
(22, 'Boeing 757'),
(23, 'Airbus A330'),
(23, 'Boeing 757'),
(23, 'Boeing 767'),
(24, 'Boeing 717'),
(24, 'Boeing 777'),
(25, 'Airbus A320'),
(25, 'Boeing 727'),
(26, 'Airbus A321'),
(26, 'Boeing 737');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `idPers` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `adresse` varchar(25) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `salaire` float DEFAULT NULL,
  `dateEmbauche` date DEFAULT NULL,
  `examenMedical` tinyint(1) NOT NULL,
  `idType` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`idPers`, `nom`, `adresse`, `telephone`, `salaire`, `dateEmbauche`, `examenMedical`, `idType`) VALUES
(1, 'ALBAN', 'Paris', '06 - 14 - 82 - 76 - 99', 4526, '2004-03-09', 1, 1),
(2, 'ARTIZ', 'Nantes', '06 - 55 - 86 - 42 - 35', 2537, '2010-04-30', 0, 2),
(3, 'AUBRY', 'Bordeaux', '06 - 61 - 23 - 16 - 43', 5184, '2012-12-04', 1, 1),
(4, 'BARBOT', 'Toulouse', '06 - 87 - 87 - 83 - 87', 7166, '2006-07-29', 0, 4),
(5, 'BAZIER', 'Marseille', '06 - 45 - 60 - 75 - 80', 7460, '2000-06-25', 1, 1),
(6, 'BIGOT', 'Lyon', '06 - 64 - 43 - 91 - 10', 3860, '2000-05-18', 1, 2),
(7, 'BLANDIN', 'Strasbourg', '06 - 29 - 16 - 23 - 43', 6304, '2005-10-02', 0, 3),
(8, 'BLOUIN', 'Nice', '06 - 22 - 48 - 78 - 99', 6276, '2009-10-14', 1, 3),
(9, 'CADIOU', 'Montpellier', '06 - 11 - 16 - 55 - 99', 3303, '2005-12-13', 1, 3),
(10, 'CLOSERAIE', 'Nimes', '06 - 83 - 97 - 75 - 11', 6890, '2010-01-26', 1, 2),
(11, 'DE FOUAULT', 'Dijon', '06 - 60 - 42 - 13 - 79', 6703, '2010-09-15', 0, 2),
(12, 'DEGAS', 'Lille', '06 - 90 - 24 - 94 - 31', 5734, '2001-06-17', 0, 4),
(13, 'DELALANDE', 'Caen', '06 - 84 - 29 - 55 - 76', 6851, '2004-01-17', 1, 1),
(14, 'DESMONTS', 'Perpignan', '06 - 62 - 46 - 53 - 68', 7233, '2001-03-27', 1, 2),
(15, 'DUGUE', 'Nimes', '06 - 11 - 91 - 75 - 74', 7149, '2004-10-29', 0, 4),
(16, 'FRAPPIER', 'Marseille', '06 - 58 - 14 - 81 - 66', 4719, '2006-09-04', 0, 1),
(17, 'GABRIEL', 'Bordeaux', '06 - 27 - 94 - 93 - 54', 3383, '2004-07-19', 1, 3),
(18, 'GAUTHIER', 'Toulouse', '06 - 96 - 95 - 97 - 70', 6466, '2002-10-21', 1, 1),
(19, 'GERARD', 'Paris', '06 - 69 - 19 - 13 - 64', 2471, '2000-06-11', 1, 2),
(20, 'GRAPELLI', 'Lille', '06 - 27 - 36 - 82 - 48', 4818, '2004-01-07', 0, 2),
(21, 'GRIMAUD', 'Dijon', '06 - 23 - 69 - 52 - 21', 7269, '2011-12-19', 0, 2),
(22, 'HURION', 'Montpellier', '06 - 61 - 15 - 76 - 88', 3943, '2009-10-28', 1, 4),
(23, 'KERRIEN', 'Paris', '06 - 18 - 71 - 68 - 33', 5136, '2000-04-15', 0, 3),
(24, 'LACANA', 'Caen', '06 - 61 - 54 - 80 - 86', 2795, '2001-08-18', 1, 2),
(25, 'LE BRAZ', 'Perpignan', '06 - 21 - 54 - 70 - 43', 3933, '2005-01-23', 1, 4),
(26, 'LE COZIC', 'Strasbourg', '06 - 75 - 54 - 71 - 15', 5227, '2006-01-27', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `programmervol`
--

CREATE TABLE `programmervol` (
  `numPers` int(11) NOT NULL,
  `numVol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `programmervol`
--

INSERT INTO `programmervol` (`numPers`, `numVol`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 6),
(3, 6),
(9, 4),
(15, 4),
(18, 6),
(19, 4),
(26, 6);

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE `test` (
  `idTest` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `etat` varchar(25) DEFAULT NULL,
  `numAvion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `test`
--

INSERT INTO `test` (`idTest`, `nom`, `date`, `etat`, `numAvion`) VALUES
(1, 'Train avant', '0000-00-00', 'En panne', 28),
(2, 'Vérification Pneu', '0000-00-00', 'A reparer', 29),
(3, 'Vérification moteur', '0000-00-00', 'Bon', 18),
(4, 'Contrôle filtre', '0000-00-00', 'A reparer', 22),
(5, 'Changement huile', '0000-00-00', 'Bon', 29),
(6, 'Equipements secours', '0000-00-00', 'Bon', 1),
(7, 'Blocs de navigation', '0000-00-00', 'En panne', 4),
(8, 'Ultrasons', '0000-00-00', 'A reparer', 1),
(9, 'Vérification câblage', '0000-00-00', 'Bon', 27),
(10, 'Carlaing', '0000-00-00', 'Bon', 22),
(11, 'Vérification cokpit', '0000-00-00', 'En panne', 24),
(12, 'Dépannage hydraulique', '0000-00-00', 'A reparer', 7),
(13, 'Maintenance technique', '0000-00-00', 'A reparer', 3),
(14, 'Maintenance des moteurs', '0000-00-00', 'Bon', 7),
(15, 'Maintenance des systèmes ', '0000-00-00', 'A reparer', 27),
(16, 'Maintenance du logiciel', '0000-00-00', 'Bon', 5),
(17, 'Train avant', '0000-00-00', 'A reparer', 3),
(18, 'Vérification câblage', '0000-00-00', 'Bon', 4),
(19, 'Equipements secours', '0000-00-00', 'Bon', 1),
(20, 'Ultrasons', '0000-00-00', 'Bon', 25),
(21, 'Dépannage hydraulique', '0000-00-00', 'En panne', 11),
(22, 'Blocs de navigation', '0000-00-00', 'A reparer', 25),
(23, 'Contrôle filtre', '0000-00-00', 'Bon', 19),
(24, 'Maintenance technique', '0000-00-00', 'Bon', 15),
(25, 'Vérification câblage', '0000-00-00', 'En panne', 22),
(26, 'Vérification cokpit', '0000-00-00', 'A reparer', 10),
(27, 'Maintenance des moteurs', '0000-00-00', 'A reparer', 19),
(28, 'Vérification Pneu', '0000-00-00', 'Bon', 10),
(29, 'Carlaing', '0000-00-00', 'A reparer', 10),
(30, 'Dépannage hydraulique', '0000-00-00', 'Bon', 14);

-- --------------------------------------------------------

--
-- Structure de la table `typeavion`
--

CREATE TABLE `typeavion` (
  `nom` varchar(25) NOT NULL,
  `poids` int(11) DEFAULT NULL,
  `capacite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typeavion`
--

INSERT INTO `typeavion` (`nom`, `poids`, `capacite`) VALUES
('Airbus A320', 1671, 235),
('Airbus A321', 1187, 235),
('Airbus A330', 1164, 264),
('Boeing 717', 1484, 259),
('Boeing 727', 1617, 218),
('Boeing 737', 1434, 261),
('Boeing 747', 1379, 286),
('Boeing 757', 1473, 294),
('Boeing 767', 1016, 253),
('Boeing 777', 1771, 285);

-- --------------------------------------------------------

--
-- Structure de la table `typepersonnel`
--

CREATE TABLE `typepersonnel` (
  `idTypePersonnel` int(10) NOT NULL,
  `nomTypePersonnel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typepersonnel`
--

INSERT INTO `typepersonnel` (`idTypePersonnel`, `nomTypePersonnel`) VALUES
(1, 'Steward'),
(2, 'Pilote'),
(3, 'Co-pilote'),
(4, 'Hôtesse');

-- --------------------------------------------------------

--
-- Structure de la table `vol`
--

CREATE TABLE `vol` (
  `idVol` int(11) NOT NULL,
  `villeDep` varchar(25) NOT NULL,
  `villeArr` varchar(25) NOT NULL,
  `dateVol` date NOT NULL,
  `numAvion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vol`
--

INSERT INTO `vol` (`idVol`, `villeDep`, `villeArr`, `dateVol`, `numAvion`) VALUES
(1, 'Biarritz', 'Paris', '2017-04-15', 1),
(2, 'Lille', 'Nantes', '2017-10-17', 2),
(3, 'Nantes', 'Bordeaux', '2017-03-19', 3),
(4, 'Nantes', 'Toulouse', '2017-01-02', 4),
(5, 'Lille', 'Marseille', '2017-02-22', 5),
(6, 'Lille', 'Lyon', '2017-10-01', 6),
(7, 'Toulouse', 'Strasbourg', '2017-09-18', 7),
(8, 'Biarritz', 'Nice', '2017-09-12', 8),
(9, 'Lille', 'Montpellier', '2017-12-17', 9),
(10, 'Biarritz', 'Nimes', '2017-04-13', 10),
(11, 'Nantes', 'Dijon', '2017-04-26', 11),
(12, 'Lille', 'Caen', '2017-11-06', 12),
(13, 'Nantes', 'Caen', '2017-11-27', 13),
(14, 'Lille', 'Perpignan', '2017-08-18', 14),
(15, 'Toulouse', 'Nimes', '2017-04-01', 15),
(16, 'Biarritz', 'Marseille', '2017-08-30', 16),
(17, 'Toulouse', 'Bordeaux', '2017-05-24', 17),
(18, 'Toulouse', 'Montpellier', '2017-12-21', 18),
(19, 'Nantes', 'Paris', '2017-03-27', 19),
(20, 'Biarritz', 'Lille', '2017-09-17', 20),
(21, 'Nantes', 'Dijon', '2017-12-12', 21),
(22, 'Nantes', 'Montpellier', '2017-11-20', 22),
(23, 'Nantes', 'Paris', '2017-12-17', 23),
(24, 'Lille', 'Caen', '2017-04-24', 24),
(25, 'Toulouse', 'Perpignan', '2017-02-12', 25),
(26, 'Lille', 'Strasbourg', '2017-12-10', 26),
(27, 'Lille', 'Paris', '2017-04-13', 27),
(28, 'Biarritz', 'Nantes', '2017-07-23', 28),
(29, 'Biarritz', 'Bordeaux', '2017-08-03', 29),
(30, 'Nantes', 'Toulouse', '2017-07-31', 30),
(31, 'Lille', 'Marseille', '2017-08-01', 1),
(32, 'Toulouse', 'Lyon', '2017-06-16', 2),
(33, 'Biarritz', 'Strasbourg', '2017-08-14', 3),
(34, 'Nantes', 'Nice', '2017-03-31', 4),
(35, 'Lille', 'Montpellier', '2017-07-22', 5),
(36, 'Toulouse', 'Nimes', '2017-10-14', 6),
(37, 'Toulouse', 'Dijon', '2017-12-14', 7),
(38, 'Biarritz', 'Caen', '2017-01-01', 8),
(39, 'Toulouse', 'Caen', '2017-10-17', 9),
(40, 'Biarritz', 'Perpignan', '2017-05-17', 10),
(41, 'Nantes', 'Dijon', '2017-11-01', 11),
(42, 'Biarritz', 'Montpellier', '2017-03-15', 12),
(43, 'Biarritz', 'Paris', '2017-10-09', 13),
(44, 'Biarritz', 'Caen', '2017-12-10', 14),
(45, 'Biarritz', 'Toulouse', '2017-04-08', 15),
(46, 'Toulouse', 'Marseille', '2017-05-25', 16),
(47, 'Nantes', 'Lyon', '2017-03-22', 17),
(48, 'Biarritz', 'Strasbourg', '2017-08-23', 18),
(49, 'Nantes', 'Nice', '2017-06-10', 19),
(50, 'Nantes', 'Montpellier', '2017-07-09', 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`num`),
  ADD KEY `FK_AVION_nom` (`nomTypeAvion`);

--
-- Index pour la table `aviontypepersonnel`
--
ALTER TABLE `aviontypepersonnel`
  ADD PRIMARY KEY (`idType`,`nomTypeAvion`),
  ADD KEY `nomTypeAvion` (`nomTypeAvion`);

--
-- Index pour la table `etreexpert`
--
ALTER TABLE `etreexpert`
  ADD PRIMARY KEY (`numPers`,`nomType`),
  ADD KEY `FK_etre_expert_nom` (`nomType`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`idPers`),
  ADD KEY `idType` (`idType`);

--
-- Index pour la table `programmervol`
--
ALTER TABLE `programmervol`
  ADD PRIMARY KEY (`numPers`,`numVol`),
  ADD KEY `numPers` (`numPers`),
  ADD KEY `numVol` (`numVol`);

--
-- Index pour la table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`idTest`),
  ADD KEY `FK_TEST_num_AVION` (`numAvion`);

--
-- Index pour la table `typeavion`
--
ALTER TABLE `typeavion`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `typepersonnel`
--
ALTER TABLE `typepersonnel`
  ADD PRIMARY KEY (`idTypePersonnel`);

--
-- Index pour la table `vol`
--
ALTER TABLE `vol`
  ADD PRIMARY KEY (`idVol`),
  ADD KEY `numAvion` (`numAvion`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `avion`
--
ALTER TABLE `avion`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `idPers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `test`
--
ALTER TABLE `test`
  MODIFY `idTest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `vol`
--
ALTER TABLE `vol`
  MODIFY `idVol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avion`
--
ALTER TABLE `avion`
  ADD CONSTRAINT `FK_AVION_nom` FOREIGN KEY (`nomTypeAvion`) REFERENCES `typeavion` (`nom`);

--
-- Contraintes pour la table `aviontypepersonnel`
--
ALTER TABLE `aviontypepersonnel`
  ADD CONSTRAINT `aviontypepersonnel_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `typepersonnel` (`idTypePersonnel`),
  ADD CONSTRAINT `aviontypepersonnel_ibfk_2` FOREIGN KEY (`nomTypeAvion`) REFERENCES `avion` (`nomTypeAvion`);

--
-- Contraintes pour la table `etreexpert`
--
ALTER TABLE `etreexpert`
  ADD CONSTRAINT `FK_etre_expert_nom` FOREIGN KEY (`nomType`) REFERENCES `typeavion` (`nom`),
  ADD CONSTRAINT `FK_etre_expert_num` FOREIGN KEY (`numPers`) REFERENCES `personnel` (`idPers`);

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `typepersonnel` (`idTypePersonnel`);

--
-- Contraintes pour la table `programmervol`
--
ALTER TABLE `programmervol`
  ADD CONSTRAINT `FK_Programmer_vol_num` FOREIGN KEY (`numPers`) REFERENCES `personnel` (`idPers`),
  ADD CONSTRAINT `FK_Programmer_vol_numvol` FOREIGN KEY (`numVol`) REFERENCES `vol` (`idVol`),
  ADD CONSTRAINT `programmervol_ibfk_1` FOREIGN KEY (`numVol`) REFERENCES `vol` (`idVol`);

--
-- Contraintes pour la table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `FK_TEST_num_AVION` FOREIGN KEY (`numAvion`) REFERENCES `avion` (`num`);

--
-- Contraintes pour la table `vol`
--
ALTER TABLE `vol`
  ADD CONSTRAINT `vol_ibfk_1` FOREIGN KEY (`numAvion`) REFERENCES `avion` (`num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
