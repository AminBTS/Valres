-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 14 déc. 2023 à 08:53
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddvalres`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie_salle`
--

DROP TABLE IF EXISTS `categorie_salle`;
CREATE TABLE IF NOT EXISTS `categorie_salle` (
  `idCategorieSalle` int NOT NULL,
  `libellle` varchar(32) NOT NULL,
  PRIMARY KEY (`idCategorieSalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie_salle`
--

INSERT INTO `categorie_salle` (`idCategorieSalle`, `libellle`) VALUES
(1, 'Salle de réunion'),
(2, 'Salle avec équipements'),
(3, 'Amphithéâtre');

-- --------------------------------------------------------

--
-- Structure de la table `etatreservation`
--

DROP TABLE IF EXISTS `etatreservation`;
CREATE TABLE IF NOT EXISTS `etatreservation` (
  `idEtat` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(32) NOT NULL,
  PRIMARY KEY (`idEtat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etatreservation`
--

INSERT INTO `etatreservation` (`idEtat`, `libelle`) VALUES
(1, 'Provisoire'),
(2, 'Confirmé'),
(3, 'Annulé');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `idReservation` int NOT NULL AUTO_INCREMENT,
  `datee` date NOT NULL,
  `periode` int NOT NULL,
  `idUtilisateur` int NOT NULL,
  `idEtat` int NOT NULL,
  `idSalle` int NOT NULL,
  PRIMARY KEY (`idReservation`),
  KEY `idUtilisateur` (`idUtilisateur`),
  KEY `idEtat` (`idEtat`),
  KEY `reservation_ibfk_3` (`idSalle`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`idReservation`, `datee`, `periode`, `idUtilisateur`, `idEtat`, `idSalle`) VALUES
(1, '2023-12-10', 1, 1, 1, 1),
(2, '2023-12-11', 2, 2, 1, 2),
(3, '2023-12-09', 3, 3, 1, 3),
(4, '2023-12-15', 1, 4, 2, 4),
(5, '2023-12-16', 2, 5, 2, 5),
(6, '2023-12-14', 3, 6, 2, 6),
(7, '2023-12-14', 1, 7, 3, 7),
(8, '2023-12-14', 2, 8, 3, 8),
(9, '2023-12-14', 3, 9, 3, 9),
(10, '2023-12-10', 1, 1, 1, 1),
(11, '2023-12-11', 2, 2, 1, 1),
(12, '2023-12-12', 3, 3, 1, 1),
(13, '2023-12-14', 1, 4, 2, 4),
(14, '2023-12-14', 2, 5, 2, 5),
(15, '2023-12-14', 3, 6, 2, 6),
(16, '2023-12-14', 1, 7, 3, 7),
(17, '2023-12-14', 2, 8, 3, 8),
(18, '2023-12-14', 3, 9, 3, 9),
(19, '2023-12-15', 1, 1, 1, 1),
(20, '2023-12-16', 2, 2, 1, 2),
(21, '2023-12-14', 3, 3, 1, 3),
(22, '2023-12-14', 1, 4, 2, 4),
(23, '2023-12-14', 2, 5, 2, 5),
(24, '2023-12-14', 3, 6, 2, 6),
(25, '2023-12-14', 1, 7, 3, 7),
(26, '2023-12-14', 2, 8, 3, 8),
(27, '2023-12-14', 3, 9, 3, 9);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `idSalle` int NOT NULL,
  `salle_nom` varchar(32) NOT NULL,
  `idCategorieSalle` int NOT NULL,
  PRIMARY KEY (`idSalle`),
  KEY `salle_ibfk_1` (`idCategorieSalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`idSalle`, `salle_nom`, `idCategorieSalle`) VALUES
(1, 'Majorelle', 1),
(2, 'Grüber', 2),
(3, 'Lamour', 2),
(4, 'Amphithéâtre', 3),
(5, 'Multimédia', 2),
(6, 'Longwy', 1),
(7, 'Daum', 2),
(8, 'Gallé', 2),
(9, 'Corbin', 2),
(10, 'Baccarat', 2);

-- --------------------------------------------------------

--
-- Structure de la table `structure`
--

DROP TABLE IF EXISTS `structure`;
CREATE TABLE IF NOT EXISTS `structure` (
  `idStructure` int NOT NULL,
  `structure_nom` varchar(80) DEFAULT NULL,
  `structure_adresse` varchar(80) NOT NULL,
  PRIMARY KEY (`idStructure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `structure`
--

INSERT INTO `structure` (`idStructure`, `structure_nom`, `structure_adresse`) VALUES
(1, 'Ligue d\'escrime Lorraine', '5, rue des trois épis 54600 Villers lès Nancy'),
(2, 'Fives Nordon', '5 Pl. Aimé Morot 54000 Nancy'),
(3, 'FFT- COMITE DEPARTEMENTAL DE TENNIS DE MOSELLE', '42, rue de la commanderie 54840 Sexey les bois'),
(4, 'Ligue Volley Ball Lorraine', '30, rue Widric 1er 54600 Villers lès Nancy'),
(5, 'Sporting Club Ennery', '48 Rue Marcel Decker, 57365 Ennery'),
(6, 'Lycée public Frederic Chopin', '39 rue du Sergent Blandan 54000 Nancy'),
(7, 'Association Sportive Nancy Lorraine (ASNL)', '30, rue Widric 1er 54600 Villers lès Nancy'),
(8, 'Maison des ligues', '5 Rue Albéric 57000 Metz');

-- --------------------------------------------------------

--
-- Structure de la table `type_accees`
--

DROP TABLE IF EXISTS `type_accees`;
CREATE TABLE IF NOT EXISTS `type_accees` (
  `idAccees` int NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`idAccees`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `type_accees`
--

INSERT INTO `type_accees` (`idAccees`, `libelle`) VALUES
(1, 'Administrateur'),
(2, 'Secrétariat'),
(3, 'Responsable'),
(4, 'Utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idUtilisateur` int NOT NULL,
  `nom` varchar(32) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(32) NOT NULL,
  `motDePasse` varchar(50) NOT NULL,
  `idStructure` int NOT NULL,
  `idAccees` int NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  KEY `idStructure` (`idStructure`),
  KEY `idAccees` (`idAccees`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `nom`, `prenom`, `mail`, `motDePasse`, `idStructure`, `idAccees`) VALUES
(1, 'BANDILELLA', 'CLEMENT', 'clement@gmail.com', 'clement12', 4, 4),
(2, 'BIACQUEL', 'VERONIQUE', 'vero@gmail.com', 'veronique12321', 2, 4),
(3, 'SILBERT', 'GILLES', 'gilles@gmail.com', 'gilles111', 5, 4),
(4, 'TORTEMANN', 'PIERRE', 'pierre@gmail.com', 'pierre1932', 7, 4),
(5, 'PERNOT', 'LEA', 'lea@gmail.com', 'lea1408', 6, 4),
(6, 'ZUEL', 'STEPHANIE', 'stephanie@gmail.com', 'stephanie131231', 2, 4),
(7, 'DUBOIS', 'EMILIE', 'emilie@gmail.com', 'emilie123', 7, 1),
(8, 'LEROY', 'NICOLAS', 'nicolas@gmail.com', 'nicolas456', 7, 2),
(9, 'MARTIN', 'LAURA', 'laura@gmail.com', 'laura789', 7, 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`idEtat`) REFERENCES `etatreservation` (`idEtat`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`idSalle`) REFERENCES `salle` (`idSalle`);

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`idCategorieSalle`) REFERENCES `categorie_salle` (`idCategorieSalle`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`idStructure`) REFERENCES `structure` (`idStructure`),
  ADD CONSTRAINT `utilisateur_ibfk_3` FOREIGN KEY (`idAccees`) REFERENCES `type_accees` (`idAccees`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
