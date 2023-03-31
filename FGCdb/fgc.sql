-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 31 mars 2023 à 09:08
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fgc`
--

-- --------------------------------------------------------

--
-- Structure de la table `Articles`
--

CREATE TABLE `Articles` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `contenu` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Articles`
--

INSERT INTO `Articles` (`id`, `userId`, `titre`, `date`, `contenu`) VALUES
(1, 2, 'titretest', '1999-11-20', 'Je suis un contenu de test'),
(2, NULL, 'titre 3', NULL, 'sdjkfhqsldkfhqldsjkfhqlkshf');

-- --------------------------------------------------------

--
-- Structure de la table `DateDeSortie`
--

CREATE TABLE `DateDeSortie` (
  `id` int(11) NOT NULL,
  `jeuId` int(11) DEFAULT NULL,
  `supportId` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `DateDeSortie`
--

INSERT INTO `DateDeSortie` (`id`, `jeuId`, `supportId`, `date`) VALUES
(1, 1, 1, '2018-12-07'),
(2, 2, 6, '2021-06-11'),
(3, 2, 4, '2021-06-11'),
(4, 2, 5, '2021-06-11'),
(5, 2, 3, '2021-06-11'),
(6, 3, 3, '2018-01-26'),
(7, 3, 4, '2018-01-26'),
(8, 3, 2, '2018-01-26'),
(9, 3, 1, '2018-09-28');

-- --------------------------------------------------------

--
-- Structure de la table `Jeu`
--

CREATE TABLE `Jeu` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Jeu`
--

INSERT INTO `Jeu` (`id`, `nom`, `description`) VALUES
(1, 'Super Smash Bros Ultimate', 'jeu vidéo de combat et de plates-formes développé par Sora Ltd. et Bandai Namco et édité par Nintendo. Il s\'agit du cinquième épisode de la série Super Smash Bros'),
(2, 'Guilty Gear Strive', 'jeu vidéo de combat développé et édité par Arc System Works. Il s\'agit du septième volet principal de la série Guilty Gear et du 24e au total'),
(3, 'Dragon Ball Figther Z', 'jeu vidéo de combat en 2,5D basé sur la franchise Dragon Ball développé par Arc System Works et édité par Bandai Namco Games.');

-- --------------------------------------------------------

--
-- Structure de la table `ParticipeA`
--

CREATE TABLE `ParticipeA` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `tournoiId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ParticipeA`
--

INSERT INTO `ParticipeA` (`id`, `userId`, `tournoiId`) VALUES
(1, 1, 2),
(2, 1, 2),
(5, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `PersoAppartientA`
--

CREATE TABLE `PersoAppartientA` (
  `id` int(11) NOT NULL,
  `jeuId` int(11) DEFAULT NULL,
  `persoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `PersoAppartientA`
--

INSERT INTO `PersoAppartientA` (`id`, `jeuId`, `persoId`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 1, 61),
(62, 1, 62),
(63, 1, 63),
(64, 1, 64),
(65, 1, 65),
(66, 1, 66),
(67, 1, 67),
(68, 1, 68),
(69, 1, 69),
(70, 1, 70),
(71, 1, 71),
(72, 1, 72),
(73, 1, 73),
(74, 1, 74),
(75, 1, 75),
(76, 1, 76),
(77, 1, 77),
(78, 1, 78),
(79, 1, 79),
(80, 1, 80),
(81, 1, 81),
(82, 1, 82),
(83, 1, 83),
(84, 1, 84),
(85, 1, 85),
(86, 1, 86),
(87, 1, 87),
(88, 2, 88),
(89, 2, 89),
(90, 2, 90),
(91, 2, 91),
(92, 2, 92),
(93, 2, 93),
(94, 2, 94),
(95, 2, 95),
(96, 2, 96),
(97, 2, 97),
(98, 2, 98),
(99, 2, 99),
(100, 2, 100),
(101, 2, 101),
(102, 2, 102),
(103, 2, 103),
(104, 2, 104),
(105, 2, 105),
(106, 2, 106),
(107, 2, 107),
(108, 3, 108),
(109, 3, 109),
(110, 3, 100),
(111, 3, 111),
(112, 3, 112),
(113, 3, 113),
(114, 3, 114),
(115, 3, 115),
(116, 3, 116),
(117, 3, 117),
(118, 3, 118),
(119, 3, 119),
(120, 3, 120),
(121, 3, 121),
(122, 3, 122),
(123, 3, 123),
(124, 3, 124),
(125, 3, 125),
(126, 3, 126),
(127, 3, 127),
(128, 3, 128),
(129, 3, 129),
(130, 3, 130),
(131, 3, 131),
(132, 3, 132),
(133, 3, 133),
(134, 3, 134),
(135, 3, 135),
(136, 3, 136),
(137, 3, 137),
(138, 3, 138),
(139, 3, 139),
(140, 3, 140),
(141, 3, 141),
(142, 3, 142),
(143, 3, 143),
(144, 3, 144),
(145, 3, 145),
(146, 3, 146),
(147, 3, 147),
(148, 3, 148),
(149, 3, 149),
(150, 3, 150),
(151, 3, 151);

-- --------------------------------------------------------

--
-- Structure de la table `PersoJouer`
--

CREATE TABLE `PersoJouer` (
  `id` int(11) NOT NULL,
  `usersId` int(11) DEFAULT NULL,
  `persoId` int(11) DEFAULT NULL,
  `nbVictoire` int(11) DEFAULT '0',
  `nbDefaite` int(11) DEFAULT '0',
  `nbMatchNul` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `PersoJouer`
--

INSERT INTO `PersoJouer` (`id`, `usersId`, `persoId`, `nbVictoire`, `nbDefaite`, `nbMatchNul`) VALUES
(1, 1, 1, 20, 12, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Personnages`
--

CREATE TABLE `Personnages` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Personnages`
--

INSERT INTO `Personnages` (`id`, `nom`) VALUES
(1, 'Mario'),
(2, 'Donkey Kong'),
(3, 'Link'),
(4, 'Samus'),
(5, 'Dark Samus'),
(6, 'Yoshi'),
(7, 'Kirby'),
(8, 'Fox'),
(9, 'Pikachu'),
(10, 'Luigi'),
(11, 'Ness'),
(12, 'Captain Falcon'),
(13, 'Rondoudou'),
(14, 'Peach'),
(15, 'Daisy'),
(16, 'Bowser'),
(17, 'Ice Climbers'),
(18, 'Sheik'),
(19, 'Zelda'),
(20, 'Dr.Mario'),
(21, 'Pichu'),
(22, 'Falco'),
(23, 'Marth'),
(24, 'Lucina'),
(25, 'Link Petit'),
(26, 'Ganondorf'),
(27, 'Mewto'),
(28, 'Roy'),
(29, 'Chrom'),
(30, 'Mr. Game And Watch'),
(31, 'Meta Knight'),
(32, 'Pit'),
(33, 'Dark Pit'),
(34, 'Samus Sans Armure'),
(35, 'Wario'),
(36, 'Snake'),
(37, 'Ike'),
(38, 'Dresseur Pokemon Carapuce/Herbizarre/Dracofeu'),
(39, 'Diddy Kong'),
(40, 'Lucas'),
(41, 'Sonic'),
(42, 'roi dadidou'),
(43, 'Olimar'),
(44, 'Lucario'),
(45, 'R.O.B'),
(46, 'Link Cartoon'),
(47, 'Wolf'),
(48, 'Villageois'),
(49, 'Mega Man'),
(50, 'Entraineur Wii Fit'),
(51, 'Harmonie & Luma'),
(52, 'Little Mac'),
(53, 'Amphinobie'),
(54, 'Mii Fihter : Brawler'),
(55, 'Mii Figther : Swordfigther'),
(56, 'Mii Figther : Gunner'),
(57, 'Palutena'),
(58, 'Pac-Man'),
(59, 'Robin'),
(60, 'Shulk'),
(61, 'Bowser JR.'),
(62, 'Duck Hunt'),
(63, 'Ryu'),
(64, 'Ken'),
(65, 'Cloud'),
(66, 'Corrin'),
(67, 'Bayonetta'),
(68, 'Inkling'),
(69, 'Ridley'),
(70, 'Simon'),
(71, 'Richter'),
(72, 'King K. Rool'),
(73, 'Isabelle'),
(74, 'Felinferno'),
(75, 'Plante Piranha'),
(76, 'Joker'),
(77, 'Hero'),
(78, 'Banjo & Kazooie'),
(79, 'Terry'),
(80, 'Byleth'),
(81, 'Min Min'),
(82, 'Steve/Alex'),
(83, 'Sephiroth'),
(84, 'Pyra'),
(85, 'Mythra'),
(86, 'Kazuya'),
(87, 'Sora'),
(88, 'Sol'),
(89, 'Ky'),
(90, 'May'),
(91, 'Axl'),
(92, 'Chipp'),
(93, 'Potemkin'),
(94, 'Faust'),
(95, 'Millia'),
(96, 'Zato'),
(97, 'Ramlethal'),
(98, 'Leo'),
(99, 'Nagoriyuki'),
(100, 'Giovanna'),
(101, 'Anji'),
(102, 'I-No'),
(103, 'Goldlewis'),
(104, 'Jack-O\''),
(105, 'Happy Chaos'),
(106, 'Baiken'),
(107, 'Testament'),
(108, 'Gohan Adulte'),
(109, 'Androïd 16'),
(110, 'Androïd 17'),
(111, 'Androïd 18'),
(112, 'Androïd 21'),
(113, 'Androïd 21 Blouse De Laboratoire'),
(114, 'Bardock'),
(115, 'Beerus'),
(116, 'Broly'),
(117, 'Broly (DBS)'),
(118, 'Capitain Ginyu'),
(119, 'Cell'),
(120, 'Cooler'),
(121, 'Freezer'),
(122, 'Zamasu Fusinne'),
(123, 'Goku'),
(124, 'Goku Black'),
(125, 'Goku (GT)'),
(126, 'Gotenks'),
(127, 'Hit'),
(128, 'Janemba'),
(129, 'Jiren'),
(130, 'Kefla'),
(131, 'Buu Enfant'),
(132, 'Krillin'),
(133, 'Majin Buu'),
(134, 'Tortue Genial'),
(135, 'Nappa'),
(136, 'Piccolo'),
(137, 'SS4 Gogeta'),
(138, 'Super Baby 2'),
(139, 'Super Sayan Blue Gogeta'),
(140, 'Super Sayan Blue Goku'),
(141, 'Super Sayan Blue Vegeta'),
(142, 'Super Sayan Blue Vegeto'),
(143, 'Super Sayan Goku'),
(144, 'Super Sayan Vegeta'),
(145, 'Gohan Enfant'),
(146, 'Ten Shin Han'),
(147, 'Trunks'),
(148, 'Goku Ultra Instinct'),
(149, 'Vegeta'),
(150, 'Videl'),
(151, 'Yamcha');

-- --------------------------------------------------------

--
-- Structure de la table `Support`
--

CREATE TABLE `Support` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Support`
--

INSERT INTO `Support` (`id`, `nom`) VALUES
(1, 'Nintendo Switch'),
(2, 'Xbox one'),
(3, 'Microsoft Windows'),
(4, 'Playstation 4'),
(5, 'Playstation 5'),
(6, 'Arcade');

-- --------------------------------------------------------

--
-- Structure de la table `Tournois`
--

CREATE TABLE `Tournois` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `dateDebut` datetime DEFAULT NULL,
  `dateFin` datetime DEFAULT NULL,
  `nbParticipants` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Tournois`
--

INSERT INTO `Tournois` (`id`, `nom`, `ownerId`, `dateDebut`, `dateFin`, `nbParticipants`) VALUES
(1, 'SSBU Tournament', 1, '2019-06-13 14:00:00', '2019-06-14 14:00:00', 34),
(2, 'GGS Tournament', 2, '2021-07-31 17:34:34', '2021-08-01 17:34:34', 56),
(3, 'DBFZ Tournament', 3, '2019-01-24 17:08:36', '2019-01-25 17:08:36', 8);

-- --------------------------------------------------------

--
-- Structure de la table `Tournois_Owner`
--

CREATE TABLE `Tournois_Owner` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Tournois_Owner`
--

INSERT INTO `Tournois_Owner` (`id`, `nom`, `numero`, `mail`) VALUES
(1, 'Edouard', '654856525', 'e.ssbutournament@hotmail.fr'),
(2, 'Baptiste', '625458565', 'b.ggstournament@hotmail.fr'),
(3, 'Jonas', '665458525', 'j.dbfztournament@hotmail.fr');

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `dateDeNaissance` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Users`
--

INSERT INTO `Users` (`id`, `prenom`, `nom`, `email`, `pseudo`, `dateDeNaissance`, `password`) VALUES
(1, 'Ludovic', 'Gauvin', 'lulu91340@hotmail.fr', 'Ludal', '1999-11-20', NULL),
(2, 'Edouard', 'Da Costa', 'edouard.dacosta.dev@gmail.com', 'Speedi', '1999-12-13', NULL),
(3, 'Khais', 'Beduolgu', 'khaisbeduoglu@gmail.com', 'Anthro', '1998-12-10', NULL),
(4, 'Jordan', 'Archambault', 'jordanarchambault7@gmail.com', 'LeSaligaud', '1999-12-02', NULL),
(5, 'Prenomtest', 'Nomtest', 'email@.fr', 'pseudotest', NULL, 'passwordtest');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `DateDeSortie`
--
ALTER TABLE `DateDeSortie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jeuId` (`jeuId`),
  ADD KEY `supportId` (`supportId`);

--
-- Index pour la table `Jeu`
--
ALTER TABLE `Jeu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ParticipeA`
--
ALTER TABLE `ParticipeA`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `tournoiId` (`tournoiId`);

--
-- Index pour la table `PersoAppartientA`
--
ALTER TABLE `PersoAppartientA`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persoId` (`persoId`),
  ADD KEY `jeuId` (`jeuId`);

--
-- Index pour la table `PersoJouer`
--
ALTER TABLE `PersoJouer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`),
  ADD KEY `persoId` (`persoId`);

--
-- Index pour la table `Personnages`
--
ALTER TABLE `Personnages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Support`
--
ALTER TABLE `Support`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Tournois`
--
ALTER TABLE `Tournois`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ownerId` (`ownerId`);

--
-- Index pour la table `Tournois_Owner`
--
ALTER TABLE `Tournois_Owner`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `DateDeSortie`
--
ALTER TABLE `DateDeSortie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `Jeu`
--
ALTER TABLE `Jeu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `ParticipeA`
--
ALTER TABLE `ParticipeA`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `PersoAppartientA`
--
ALTER TABLE `PersoAppartientA`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `PersoJouer`
--
ALTER TABLE `PersoJouer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Personnages`
--
ALTER TABLE `Personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `Support`
--
ALTER TABLE `Support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Tournois`
--
ALTER TABLE `Tournois`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Tournois_Owner`
--
ALTER TABLE `Tournois_Owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`);

--
-- Contraintes pour la table `DateDeSortie`
--
ALTER TABLE `DateDeSortie`
  ADD CONSTRAINT `datedesortie_ibfk_1` FOREIGN KEY (`jeuId`) REFERENCES `Jeu` (`id`),
  ADD CONSTRAINT `datedesortie_ibfk_2` FOREIGN KEY (`supportId`) REFERENCES `Support` (`id`);

--
-- Contraintes pour la table `ParticipeA`
--
ALTER TABLE `ParticipeA`
  ADD CONSTRAINT `participea_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`),
  ADD CONSTRAINT `participea_ibfk_2` FOREIGN KEY (`tournoiId`) REFERENCES `Tournois` (`id`);

--
-- Contraintes pour la table `PersoAppartientA`
--
ALTER TABLE `PersoAppartientA`
  ADD CONSTRAINT `persoappartienta_ibfk_1` FOREIGN KEY (`persoId`) REFERENCES `Personnages` (`id`),
  ADD CONSTRAINT `persoappartienta_ibfk_2` FOREIGN KEY (`jeuId`) REFERENCES `Jeu` (`id`);

--
-- Contraintes pour la table `PersoJouer`
--
ALTER TABLE `PersoJouer`
  ADD CONSTRAINT `persojouer_ibfk_1` FOREIGN KEY (`usersId`) REFERENCES `Users` (`id`),
  ADD CONSTRAINT `persojouer_ibfk_2` FOREIGN KEY (`persoId`) REFERENCES `Personnages` (`id`);

--
-- Contraintes pour la table `Tournois`
--
ALTER TABLE `Tournois`
  ADD CONSTRAINT `tournois_ibfk_1` FOREIGN KEY (`ownerId`) REFERENCES `Tournois_Owner` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
