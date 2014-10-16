-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Jeu 02 Octobre 2014 à 20:49
-- Version du serveur :  5.5.34
-- Version de PHP :  5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `5xcli`
--

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `ref` int(3) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) NOT NULL,
  `titre` varchar(60) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `ordre` int(2) NOT NULL,
  `email` varchar(30) NOT NULL,
  `debut` date NOT NULL,
  `sortie` date NOT NULL,
  PRIMARY KEY (`ref`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=194 ;

--
-- Contenu de la table `membres`
--

INSERT INTO `membres` (`ref`, `nom`, `titre`, `tel`, `ordre`, `email`, `debut`, `sortie`) VALUES
(1, 'Jérôme Mallefet', 'Chercheur qualifié F.N.R.S. - Professeur', '+32 10 47 87 50', 1, 'jerome.mallefet', '1990-00-00', '0000-00-00'),
(2, 'Fernand Baguet', 'Professeur émérite', '', 2, '', '2003-00-00', '0000-00-00'),
(3, 'Liliane Demuylder-Résimont', 'Ancienne secrétaire', '', 0, '', '1998-00-00', '2011-01-01'),
(4, 'Christine Vanderlinden', 'Doctorat en 2006', '', 0, '', '2002-09-01', '2006-06-30'),
(5, 'Vincent Zintzen', 'Doctorat en 2007', '', 0, '', '0000-00-00', '2007-06-30'),
(6, 'Jenny Krönström', 'Boursière SRC - Doctorat en 2009', '+ 46 31 773 367', 7, '', '2002-00-00', '2009-02-20'),
(7, 'Thibaut Bouveroux', 'Doctorat en 2010', '', 4, '', '2002-00-00', '2010-00-00'),
(8, 'Geraldine de Montpellier', 'DEA en 2007', '', 0, '', '0000-00-00', '2007-09-01'),
(9, 'Arnaud Pilet', 'DEA en 2006', '', 0, '', '2005-00-00', '2006-06-30'),
(10, 'Olivia Urbin', 'Mémorante en 2007', '', 0, '', '0000-00-00', '2007-09-01'),
(11, 'Fanny Quevy', 'Mémorante en 2007', '', 0, '', '2006-00-00', '2007-00-00'),
(12, 'Jessalyn Renard', 'Mémorante en 2007', '', 0, '', '2006-00-00', '2007-00-00'),
(13, 'Bruno Parmentier', 'Mémorant en 2007', '', 0, '', '2006-00-00', '2007-00-00'),
(14, 'Stéphanie Deval', 'Mémorante en 2006', '', 0, '', '0000-00-00', '2006-09-01'),
(15, 'Alexandre Snessens', 'Mémorant en 2006', '', 0, '', '0000-00-00', '2006-09-01'),
(16, 'Maxime Duvivier', 'Mémorant en 2006', '', 0, '', '0000-00-00', '2006-09-01'),
(17, 'Camille Domincent', 'Mémorante en 2006', '', 0, '', '0000-00-00', '2006-09-01'),
(18, 'Julien M. Claes', 'Post doc FNRS en 2010', '+ 32 10 47 34 75', 5, '', '2006-00-00', '0000-00-00'),
(19, 'Charlotte Havermans', 'Doctorat en 2012', '', 6, '', '2007-00-00', '2012-12-04'),
(20, 'Kim Verbeke', 'Mémorante en 2006', '', 0, '', '0000-00-00', '2006-06-30'),
(21, 'Audrey Binet', 'Mémorante en 2006', '', 0, '', '0000-00-00', '2006-06-30'),
(22, 'Marie Chevalier', 'DEA en 2006', '', 0, '', '0000-00-00', '2006-06-30'),
(23, 'Michaël Vanhemelen', 'DEA en 2005', '', 0, '', '0000-00-00', '2005-06-30'),
(24, 'Virginie Van Dongel Vogels', 'DEA en 2005', '', 0, '', '0000-00-00', '2005-06-30'),
(25, 'Samuel Dupont', 'Post doctorat en Suède depuis 2003', '', 0, '', '1998-00-00', '2003-06-30'),
(26, 'Ariane Angenot', 'Mémorante en 2002', '', 0, '', '0000-00-00', '2002-06-30'),
(27, 'Olivier Bruggeman', 'Mémorant en 2001', '', 0, '', '0000-00-00', '2001-06-30'),
(28, 'Florence Bieswal', 'Mémorante en 2000', '', 0, '', '0000-00-00', '2000-06-30'),
(29, 'Paula Cisternas', 'Post Doc en 2004', '', 0, '', '0000-00-00', '2004-06-30'),
(30, 'Géraldine Fauville', 'DEA en 2002', '', 0, '', '0000-00-00', '2002-06-30'),
(31, 'Anne-Noëlle Charles', 'Mémorante en 2002', '', 0, '', '0000-00-00', '2002-06-30'),
(32, 'Nancy De Bremaecker', 'Doctorat en 2000', '', 0, '', '0000-00-00', '2000-06-30'),
(33, 'Valérie De Decker', 'Mémorante en 2002', '', 0, '', '0000-00-00', '2002-06-30'),
(34, 'Coraline de Lassasie', 'Stagiaire UK', '', 0, '', '0000-00-00', '2002-06-30'),
(35, 'Yannick Dewael', 'Doctorat en 2002', '', 0, '', '0000-00-00', '2002-06-30'),
(36, 'Florence Dumont', 'Mémorante en 1999', '', 0, '', '0000-00-00', '1999-06-30'),
(37, 'Damien Sonny', 'Mémorant en 1999', '', 0, '', '0000-00-00', '1999-06-30'),
(38, 'Gaelle Vandemeulebroecke', 'Mémorante en 1999', '', 0, '', '0000-00-00', '1999-06-30'),
(39, 'Denis Vangeluwe', 'Mémorant en 1999', '', 0, '', '0000-00-00', '1999-06-30'),
(40, 'Xavier Wattiez', 'Mémorant en 2002', '', 0, '', '0000-00-00', '2002-06-30'),
(41, 'Xavier Mulliez', 'Mémorant en 2008', '', 10, '', '2007-07-05', '2008-09-03'),
(42, 'Marie Renwart', 'Doctorat en cours depuis 2009 - FRIA', '+ 32 10 47 34 77', 12, '', '2007-10-01', '0000-00-00'),
(43, 'Laetitia Berten', 'Maitrise en 2008', '', 8, '', '2007-00-00', '2009-09-01'),
(44, 'José Patio (Portugal - Universidade dos Açores)', 'Maitrise en 2008 ', '', 11, '', '2008-01-01', '2009-01-05'),
(45, 'Alice Jones', 'Doctorat en cours depuis 2009 - FRIA', '+ 32 10 47 34 77', 9, '', '2007-10-01', '0000-00-00'),
(193, 'Marion Boulard', 'Stagiaire Maitrise France 2013', '', 25, '', '2013-02-21', '0000-00-00'),
(54, 'Dincq Sophie', 'Maitrise en 2010', '', 14, '', '2009-09-15', '2011-01-28'),
(64, 'Dejaegere Romain', 'Maitirse en 2010', '', 15, '', '2009-09-15', '2011-01-28'),
(94, 'Verheyen Marie', 'Doctorat en cours depuis 2011 (FRIA) IRScNB/UCL', '', 23, '', '2009-09-15', '0000-00-00'),
(104, 'Moudjahi Dorothée', 'Maitrise en 2010', '', 13, '', '2008-10-16', '2011-01-28'),
(114, 'Anaïd Gouveneaux', 'Doctorat en cours depuis 2010 - FRIA', '+ 32 10 47 34 77', 17, '', '2010-01-04', '0000-00-00'),
(124, 'Jérôme Delroisse', 'Doctorat en cours depuis 2009 - FNRS - UMH/UCL', '+ 32 10 47 34 77', 18, '', '2009-09-01', '0000-00-00'),
(134, 'Marine Quintin', 'Maîtrise en 2011', '', 19, '', '2011-01-03', '2012-01-27'),
(153, 'Gerlien Verhaegen', 'Maitrise 2013', '', 20, '', '2013-01-01', '0000-00-00'),
(163, 'Cyril Hammoud', 'Maitrise 2013', '', 21, '', '2012-09-20', '0000-00-00'),
(173, 'Benoit Ganty', 'Maitrise 2013', '', 22, '', '2013-01-01', '0000-00-00'),
(183, 'Dominique Angelot', 'Secrétaire', '+32 10 47 34 56', 3, '', '2011-01-01', '0000-00-00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
