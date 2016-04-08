-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 30 Mars 2016 à 16:50
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `tp_archi_foot`
--

-- --------------------------------------------------------

--
-- Structure de la table `championnat`
--

CREATE TABLE IF NOT EXISTS `championnat` (
  `id_championnat` int(11) NOT NULL AUTO_INCREMENT,
  `nom_championnat` varchar(50) NOT NULL,
  `pays_championnat` varchar(50) NOT NULL,
  `annee_championnat` int(4) NOT NULL,
  `nb_equipe_championnat` int(3) NOT NULL,
  `pts_gagne` int(1) NOT NULL,
  `pts_perdu` int(1) NOT NULL,
  `pts_nul` int(1) NOT NULL,
  `type_exaequo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_championnat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `championnat`
--

INSERT INTO `championnat` (`id_championnat`, `nom_championnat`, `pays_championnat`, `annee_championnat`, `nb_equipe_championnat`, `pts_gagne`, `pts_perdu`, `pts_nul`, `type_exaequo`) VALUES
(3, 'Liga', 'Espagne', 2015, 20, 3, 0, 1, 'difference'),
(4, 'Liga Adelante', 'Espagne', 2015, 20, 3, 0, 1, 'difference'),
(6, 'Bundesliga', 'Allemagne', 2015, 18, 3, 0, 1, 'difference');

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE IF NOT EXISTS `equipe` (
  `id_equipe` int(11) NOT NULL AUTO_INCREMENT,
  `nom_equipe` varchar(50) NOT NULL,
  `entraineur_equipe` varchar(50) NOT NULL,
  `blason_equipe` varchar(100) DEFAULT NULL,
  `nom_stade` varchar(50) NOT NULL,
  `capacite_stade` int(11) NOT NULL DEFAULT '0',
  `nb_but_marques` int(3) NOT NULL DEFAULT '0',
  `nb_but_concedes` int(3) NOT NULL DEFAULT '0',
  `pts_saison_equipe` int(3) NOT NULL DEFAULT '0',
  `president_equipe` varchar(50) DEFAULT NULL,
  `annee_creation_equipe` int(4) NOT NULL,
  `id_championnat` int(11) NOT NULL,
  `nb_match_equipe` int(11) NOT NULL DEFAULT '0',
  `nb_matchg_equipe` int(11) NOT NULL DEFAULT '0',
  `nb_matchn_equipe` int(11) NOT NULL DEFAULT '0',
  `nb_matchp_equipe` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_equipe`),
  KEY `fk_equipe_championnat_id_championnat` (`id_championnat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Contenu de la table `equipe`
--

INSERT INTO `equipe` (`id_equipe`, `nom_equipe`, `entraineur_equipe`, `blason_equipe`, `nom_stade`, `capacite_stade`, `nb_but_marques`, `nb_but_concedes`, `pts_saison_equipe`, `president_equipe`, `annee_creation_equipe`, `id_championnat`, `nb_match_equipe`, `nb_matchg_equipe`, `nb_matchn_equipe`, `nb_matchp_equipe`) VALUES
(5, 'FC Barcelone', 'Luis Enrique', 'images/FC Barcelone.png', 'Camp Nou', 99786, 86, 24, 76, 'Josep Maria Bartomeu', 1899, 3, 30, 24, 4, 2),
(6, 'Atletico Madrid', 'Diego Simeone', 'images/Atletico Madrid.png', 'Estadio Vicente Calderon', 55005, 46, 14, 67, 'Enrique Cerezo', 1903, 3, 30, 21, 4, 5),
(7, 'Real Madrid', 'Zinedine Zidane', 'images/Real Madrid.png', 'Santiago Bernabeu', 81044, 87, 28, 66, 'Florentino Perez', 1902, 3, 30, 20, 6, 4),
(8, 'Villareal', 'Marcelino Garcia Toral', 'images/Villareal.png', 'El Madrigal', 25514, 37, 25, 54, 'Fernando Roig Alfonso', 1923, 3, 30, 15, 9, 6),
(9, 'Celta Vigo', 'Eduardo Berizzo', 'images/Celta Vigo.png', 'Estadio Balaidos', 31800, 43, 51, 48, 'Carlos Mourino', 1923, 3, 30, 14, 6, 10),
(16, 'FC Seville', 'Unai Emery', 'images/FC Seville.png', 'Estadio Ramon Sanchez Pizjuan', 45500, 43, 35, 48, 'Jose Castro Carmona', 1905, 3, 30, 13, 9, 8),
(17, 'Athletic Club', 'Ernesto Valverde', 'images/Athletic Club.png', 'San Mames Barria', 53332, 48, 39, 47, 'Josu Urrutia', 1898, 3, 30, 14, 5, 11),
(18, 'Malaga', 'Javier Gracia', 'images/Malaga.png', 'Estadio La Rosaleda', 38000, 29, 28, 39, 'Abdullah bin Nasser Al Thani', 1933, 3, 30, 10, 9, 11),
(37, 'Eibar', 'Jose Luis Mendilibar', 'images/Eibar.png', 'Municipal de Ipurua', 6267, 42, 42, 38, 'Alex Aranzabal', 1940, 3, 30, 10, 8, 12),
(38, 'La Corogne', 'Victor Sanchez', 'images/La Corogne.png', 'Estadio Riazor', 34611, 39, 43, 36, 'Constantino Fernandez Pico', 1906, 3, 30, 7, 15, 8),
(39, 'Bayern Munich', 'Josep Guardiola', 'images/Bayern Munich.png', 'Allianz Arena', 75002, 35, 13, 69, 'Karl Hopfner', 1900, 6, 27, 22, 3, 2),
(40, 'Dortmund', 'Thomas Tuchel', 'images/Dortmund.png', 'Signal Iduna Park', 81359, 34, 26, 64, 'Reinhard Rauball', 1909, 6, 27, 30, 4, 3),
(41, 'Herta Berlin', 'Pal Dardai', 'images/Herta Berlin.png', 'Olympiastadion', 77116, 37, 27, 48, 'Werner Gegenbauer', 1892, 6, 27, 14, 6, 7),
(42, 'Schalke 04', 'Andre Breitenreiter', 'images/Schalke 04.png', 'Veltins Arena', 62271, 39, 35, 44, 'Clemens Tonnies', 1904, 6, 27, 13, 5, 9),
(43, 'Monchengladbach', 'Andre Schubert', 'images/Monchengladbach.png', 'Borussia Pard', 54010, 54, 44, 42, 'Rolf Konigs', 1900, 6, 27, 13, 3, 11),
(44, 'Bayer Leverkusen', 'Roger Schmidt', 'images/Bayer Leverkusen.png', 'BayArena', 302010, 39, 33, 42, 'Michael Schaede', 1904, 6, 27, 12, 6, 9),
(45, 'Mayence', 'Martin Schmidt', 'images/Mayence.png', 'Coface Arena', 34034, 35, 33, 41, 'Harald Strutz', 1905, 6, 27, 12, 5, 10),
(46, 'Wolfsburg', 'Dieter Hecking', 'images/Wolfsburg.png', 'Volswager Arena', 30000, 39, 34, 38, 'Francisco Javier Sanz', 1945, 6, 27, 10, 8, 9),
(47, 'Cologne', 'Peter Stoger', 'images/Cologne.png', 'RheinEnergieStadion', 50000, 28, 34, 33, 'Werner Spinner', 1948, 6, 27, 8, 9, 10),
(48, 'FC Ingolstadt 04', 'Ralph Hasenhuttl', 'images/FC Ingolstadt 04.png', 'Audi Sportpark', 15729, 23, 31, 33, 'Peter Jackwerth', 2004, 6, 27, 8, 9, 10),
(49, 'Leganes', 'Asier Garitano', 'images/Leganes.png', 'Estadio Municipal de Butarque', 8000, 42, 23, 54, '...', 1928, 4, 31, 14, 12, 5),
(50, 'Deportivo Alaves', 'Pepe Bordalas', 'images/Deportivo Alaves.png', 'Estadio de Mendizorroza', 19900, 35, 28, 53, '', 1921, 4, 31, 15, 8, 8),
(51, 'Gimnastic Tarragone', 'Moreno', 'images/Gimnastic Tarragone.png', 'Nou Estadi de Tarragona', 16600, 41, 30, 51, 'Josep M. Andreu i Prats', 1914, 4, 31, 13, 12, 6),
(52, 'Real Oviedo', 'Generelo', 'images/Real Oviedo.png', 'Estadio Nuevo Carlos Tartiere', 29862, 44, 35, 49, '...', 1926, 4, 31, 13, 10, 8),
(53, 'Osasuna', 'Enrique Monreal', 'images/Osasuna.png', 'Estadio El Sadar', 19602, 34, 33, 47, 'Miguel Archanco', 1920, 4, 31, 13, 8, 10);

-- --------------------------------------------------------

--
-- Structure de la table `matchs`
--

CREATE TABLE IF NOT EXISTS `matchs` (
  `id_match` int(11) NOT NULL AUTO_INCREMENT,
  `equipe_dom` varchar(50) NOT NULL,
  `equipe_ext` varchar(50) NOT NULL,
  `journee_match` int(2) NOT NULL DEFAULT '1',
  `date_match` date NOT NULL,
  `gagnant` int(1) NOT NULL,
  `nb_but_dom` int(2) NOT NULL,
  `nb_but_ext` int(2) NOT NULL,
  `id_championnat` int(11) NOT NULL,
  PRIMARY KEY (`id_match`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Contenu de la table `matchs`
--

INSERT INTO `matchs` (`id_match`, `equipe_dom`, `equipe_ext`, `journee_match`, `date_match`, `gagnant`, `nb_but_dom`, `nb_but_ext`, `id_championnat`) VALUES
(18, 'Villareal', 'FC Barcelone', 30, '2016-03-20', 0, 2, 2, 3),
(19, 'Eibar', 'FC Barcelone', 28, '2016-03-16', 2, 0, 4, 3),
(20, 'Real Madrid', 'FC Seville', 30, '2016-03-20', 1, 4, 0, 3),
(21, 'Atletico Madrid', 'La Corogne', 29, '2016-03-12', 1, 3, 0, 3),
(22, 'Real Madrid', 'Celta Vigo', 28, '2016-03-05', 1, 7, 1, 3),
(23, 'La Corogne', 'Malaga', 28, '2016-03-05', 0, 3, 3, 3),
(24, 'Eibar', 'FC Barcelone', 28, '2016-03-06', 2, 0, 4, 3),
(25, 'Celta Vigo', 'Villareal', 27, '2016-03-02', 0, 0, 0, 3),
(26, 'FC Seville', 'Eibar', 27, '2016-03-02', 1, 1, 0, 3),
(27, 'Athletic Club', 'La Corogne', 27, '2016-03-03', 1, 4, 1, 3),
(28, 'Schalke 04', 'Monchengladbach', 27, '2016-03-18', 1, 2, 1, 6),
(29, 'Cologne', 'Bayern Munich', 27, '2016-03-19', 2, 0, 1, 6),
(30, 'Herta Berlin', 'FC Ingolstadt 04', 27, '2016-03-19', 1, 2, 1, 6),
(31, 'Herta Berlin', 'Schalke 04', 26, '2016-03-11', 1, 2, 0, 6),
(32, 'Dortmund', 'Mayence', 26, '2016-03-12', 1, 2, 0, 6),
(33, 'Wolfsburg', 'Monchengladbach', 25, '2016-03-05', 1, 2, 1, 6),
(34, 'Cologne', 'Schalke 04', 25, '2016-03-05', 2, 1, 3, 6),
(35, 'Dortmund', 'Bayern Munich', 25, '2016-03-05', 0, 0, 0, 6),
(36, 'FC Ingolstadt 04', 'Cologne', 24, '2016-03-01', 0, 1, 1, 6),
(37, 'Bayern Munich', 'Mayence', 24, '2016-03-02', 2, 1, 2, 6),
(38, 'Osasuna', 'Deportivo Alaves', 29, '2016-03-13', 1, 3, 1, 4),
(39, 'Leganes', 'Deportivo Alaves', 27, '2016-02-28', 1, 2, 0, 4);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `fk_equipe_championnat_id_championnat` FOREIGN KEY (`id_championnat`) REFERENCES `championnat` (`id_championnat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
