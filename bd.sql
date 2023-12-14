-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 14 déc. 2023 à 10:59
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
-- Structure de la table `periode`
--

DROP TABLE IF EXISTS `periode`;
CREATE TABLE IF NOT EXISTS `periode` (
  `idPeriode` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`idPeriode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `periode`
--

INSERT INTO `periode` (`idPeriode`, `libelle`) VALUES
(1, 'Matinée'),
(2, 'Midi'),
(3, 'Après-midi'),
(4, 'Soirée');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `idReservation` int NOT NULL AUTO_INCREMENT,
  `datee` date NOT NULL,
  `idPeriode` int NOT NULL,
  `idUtilisateur` int NOT NULL,
  `idEtat` int NOT NULL,
  `idSalle` int NOT NULL,
  PRIMARY KEY (`idReservation`),
  KEY `idPeriode` (`idPeriode`),
  KEY `idUtilisateur` (`idUtilisateur`),
  KEY `idEtat` (`idEtat`),
  KEY `reservation_ibfk_3` (`idSalle`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`idReservation`, `datee`, `idPeriode`, `idUtilisateur`, `idEtat`, `idSalle`) VALUES
(1, '2023-12-10', 1, 1, 1, 1),
(2, '2023-12-11', 2, 2, 1, 1),
(3, '2023-12-12', 3, 3, 1, 1),
(4, '2023-12-15', 4, 4, 2, 1),
(5, '2023-12-16', 2, 5, 2, 1),
(6, '2023-12-14', 1, 1, 1, 1),
(7, '2023-12-14', 2, 2, 1, 2),
(8, '2023-12-14', 3, 3, 1, 3),
(9, '2023-12-14', 4, 4, 2, 4),
(10, '2023-12-14', 2, 5, 2, 5),
(11, '2023-12-14', 3, 6, 2, 6),
(12, '2023-12-09', 1, 1, 1, 1),
(13, '2023-12-10', 2, 2, 1, 2),
(14, '2023-12-11', 3, 3, 1, 3),
(15, '2023-12-09', 1, 1, 1, 1),
(16, '2023-12-10', 2, 2, 1, 2),
(17, '2023-12-11', 3, 3, 1, 3),
(18, '2023-12-15', 1, 4, 2, 4),
(19, '2023-12-16', 2, 5, 1, 5),
(20, '2023-12-17', 3, 6, 1, 6),
(21, '2023-12-17', 3, 7, 1, 5),
(22, '2023-12-10', 3, 2, 1, 6),
(23, '2023-12-08', 3, 7, 1, 1),
(24, '2023-12-14', 3, 1, 2, 4);

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
(1, 'Daum', 1),
(2, 'Corbin', 1),
(3, 'Baccarat', 1),
(4, 'Longwy', 1),
(5, 'Multimédia', 2),
(6, 'Amphithéâtre', 3),
(7, 'Lamour', 1),
(8, 'Grüber', 1),
(9, 'Majorelle', 1),
(10, 'Salle de restauration', 2),
(11, 'Galerie', 1),
(12, 'Salle informatique', 2),
(13, 'Hall d\'accueil', 2),
(14, 'Gallé', 1);

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
(7, 'LIEVIN', 'NATHAN', 'nathan@gmail.com', 'nathan1111', 3, 4),
(8, 'LEROY', 'NICOLAS', 'nicolas@gmail.com', 'nicolas456', 7, 2),
(9, 'MARTIN', 'LAURA', 'laura@gmail.com', 'laura789', 7, 3),
(10, 'PICARD', 'Emilie', 'emilie@gmail.com', 'emilie9982', 7, 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`idEtat`) REFERENCES `etatreservation` (`idEtat`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`idSalle`) REFERENCES `salle` (`idSalle`),
  ADD CONSTRAINT `reservation_ibfk_4` FOREIGN KEY (`idPeriode`) REFERENCES `periode` (`idPeriode`);

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
