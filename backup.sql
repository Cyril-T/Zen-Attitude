-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 06 fév. 2019 à 16:33
-- Version du serveur :  10.3.11-MariaDB
-- Version de PHP :  7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Oclock_zen-attitude`
--

--
-- Déchargement des données de la table `stage_api`
--

INSERT INTO `stage_api` (`id`, `id_api`, `animator`, `date`) VALUES
(1, 23, 'Bruno Gonzalez', '2019-04-06 09:00:00'),
(2, 275, 'Fabrice Croizé', '2019-05-05 10:30:00'),
(3, 5, 'Pascal Marcias', '2019-02-23 12:00:00'),
(4, 36, 'Yves Tirelli', '2019-03-30 11:00:00'),
(5, 8, 'Arthur Frattini', '2019-06-05 13:00:00'),
(6, 94, 'Yoshinori Kono', '2019-03-10 16:00:00');

--
-- Déchargement des données de la table `technique`
--

INSERT INTO `technique` (`id`, `title`, `attack`, `side`, `position`) VALUES
(1, 'Ikkyo', 'AI HANMI KATATE DORI', 'Omote', 'Tachi waza'),
(2, 'Ikkyo', 'AI HANMI KATATE DORI', 'Ura', 'Tachi waza'),
(3, 'Nikyo', 'AI HANMI KATATE DORI', 'Omote', 'Tachi waza'),
(4, 'Nikyo', 'AI HANMI KATATE DORI', 'Ura', 'Tachi waza'),
(5, 'Irimi nage', 'AI HANMI KATATE DORI', 'Omote', 'Tachi waza'),
(6, 'Kote gaeshi', 'CHUDAN TSUKI', 'Ura', 'Tachi waza'),
(7, 'Uchi kaiten nage', 'JODAN TSUKI', 'Ura', 'Tachi waza'),
(8, 'Kote gaeshi', 'SHOMEN USHI', 'Ura', 'Suwari waza'),
(9, 'Soto kaiten nage', 'SHOMEN UCHI', 'Omote', 'Suwari waza'),
(10, 'Ude kime nage', 'YOKOMEN USCHI', 'Ura', 'Tachi waza');

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `role`, `code`) VALUES
(1, 'Utilisateur', 'ROLE_USER'),
(2, 'Professeur', 'ROLE_TEACHER'),
(3, 'Administrateur', 'ROLE_ADMIN');

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`id`, `name`) VALUES
(1, 'No Kyu'),
(2, '5e Kyu'),
(3, '4e Kyu'),
(4, '3e Kyu'),
(5, '2e Kyu'),
(6, '1er Kyu'),
(7, '1ER DAN – SHODAN'),
(8, '2E DAN – NIDAN'),
(9, '3E DAN – SANDAN'),
(10, '4E DAN – YONDAN'),
(11, '5E DAN – GODAN'),
(12, '6E DAN – ROKUDAN');

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `url`, `alt`, `taken_at`, `caption`) VALUES
(1, '7a7d92ab27afd5aa3f78f3821ae1a61f.jpeg', 'stage club', NULL, NULL),
(2, '97774486a40fc6577d69a9fc8d49aa83.jpeg', 'hervé', NULL, NULL),
(3, '55a0308db937504ddb6edd736c77e54f.jpeg', 'hervé 2', NULL, NULL),
(4, '398834c130d4a5fe714b2af6348a9fed.jpeg', 'stage club 2', NULL, NULL),
(5, 'ff15e4454323913b01effbaa25914deb.png', 'travail au ken', NULL, NULL),
(6, '15e047d50732c7649d74731287d0ea40.jpeg', 'debutant', NULL, NULL),
(7, '330a5891912813cd0467fd0ee3a6006d.jpeg', NULL, NULL, NULL);

--
-- Déchargement des données de la table `app_users`
--

INSERT INTO `app_users` (`id`, `role_id`, `name`, `firstname`, `birthdate`, `address`, `phone`, `email`, `password`, `license`, `responsability`, `teacher_comment`) VALUES
(1, 1, 'User', 'USER', '1986-12-17 00:00:00', NULL, '0684953247', 'first_user@aïkido-bourg.com', '$2y$13$TNtH9C9ZH9MNMRhMQ1LfBe2.v1ZjSC3Kcf4OZIEmUBQVa2kQbiCUG', NULL, 'membre', 'bosse feignasse'),
(2, 2, 'Prof', 'PROF', '1966-02-15 00:00:00', NULL, '0715659574', 'first_prof@aïkido-bourg.com', '$2y$13$79mdSyeHnP7o1/PbZEXOneabyJuWAWjwMmcfE.FiJy7QzoUU0YQz6', NULL, 'membre', NULL),
(3, 3, 'Admin', 'ADMIN', '1973-05-03 00:00:00', NULL, '0619573214', 'admin@aikido-bourg.com', '$2y$13$E7aR4z7HYFtFL8o3HpJ/semEqNDRzu6i2DxjYMvSlK1ugiwIdBHJe', NULL, 'membre', NULL),
(4, 1, 'Secretary', 'DUPONT', '1983-08-04 00:00:00', NULL, '0412584232', 'secretary_dupont@gmail.com', '$2y$13$lkzGqoFqL.FcVZ5sm7X4FuggsAb/WSGfQyXV.wLV0zmF6zkWec/oS', NULL, 'secrétaire', NULL),
(5, 1, 'Treasurer', 'BADASS', '1984-12-03 00:00:00', NULL, '0462155223', 'badass_treasurer@hotmail.com', '$2y$13$z.Q17RcRpO/f1Uj6GEl.S.leyeoxi6LnJU4w3lGyoAVGJP0WNYLYm', NULL, 'trésorier', NULL),
(6, 3, 'President', 'MISTER', '1958-06-23 00:00:00', NULL, '0712255884', 'mister_president@yopmail.fr', '$2y$13$qsr6y9lfH6HCrcGc/xy3J.aYGuTGAw7cJCBUTSd2T0fdxSQwoAF2y', NULL, 'président', NULL),
(8, 1, 'Richard', 'CONTENT', '1992-07-21 00:00:00', NULL, '0615445235', 'ric@rdo.fr', '$2y$13$CDGkDg9Pd8.Hdvpop2eYm.urw7M.cSM0SnhlASRu2OA.dL2TO.1oe', NULL, 'membre', NULL),
(9, 1, 'Paulette', 'DUTRONC', '1972-02-12 00:00:00', NULL, '0652266945', 'arbuste@laposte.net', '$2y$13$VihNPfHqKLHOg0V/9ckEO.ivZlkGPdZnwtfhL1XasBWrVGm5tFSti', NULL, 'membre', NULL),
(10, 1, 'Gaston', 'LAGAFFE', '1998-08-14 00:00:00', NULL, '0702055186', 'gast_lag@voila.fr', '$2y$13$d3o0uoOO4P/fmbaXaRctZenHoE3ZxSaPwSqdn0kFoqhwrZngOucHG', NULL, 'membre', NULL);

--
-- Déchargement des données de la table `carsharing`
--

INSERT INTO `carsharing` (`id`, `stage_api_id`, `seat_number`, `driver_id`, `appointment_at`, `appointment_to`, `comment`) VALUES
(3, 6, 2, 3, '13:35:00', 'au dojo', NULL),
(4, 4, 1, 10, '02:05:00', 'au dojo', NULL),
(5, 1, 3, 1, '10:45:00', 'au dojo', 'penser à prendre à manger'),
(6, 4, 4, 3, '22:50:00', 'au dojo', NULL),
(7, 5, 2, 1, '09:20:00', 'rdv à la place', NULL);

--
-- Déchargement des données de la table `carsharing_user`
--

INSERT INTO `carsharing_user` (`carsharing_id`, `user_id`) VALUES
(3, 1),
(3, 2),
(4, 3),
(5, 2),
(5, 9),
(5, 10);


--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `created_at`, `date`) VALUES
(1, 'Fête de la crevette le 32 mars', 'célébration d’une pêche traditionnelle du port de Honfleur : celle de la « petite grise ». \r\nLe port retrouve son époque de la marine à voile. Rassemblements de vieux gréements, démonstration de déhalage au cabestan, déchargement de barriques, etc…, concerts de chants de marins et reconstitutions d’un village de pirates. Et bien sûr, dégustation de crevettes grises.\r\nAmateurs de crevettes, de poissons et de fruits de mer en tout genre, ne rater pas cette belle fête traditionnelle.\r\nUne authenticité des lieux, une fête dédiée à la mer, aux bateaux, aux équipages et à notre petite grise (nom donné à la crevette) tant appréciée.Retour ligne automatique\r\nDans ce site emblématique qu’est le port de Honfleur on célèbre ce petit crustacé depuis 1994.', '2019-01-22 15:48:30', NULL),
(2, 'Toto à eu son grade', 'Bravo toto', '2019-01-22 15:48:30', NULL),
(3, 'Repas du club', 'Venez nombreux et avec votre robe.', '2019-01-22 15:51:26', NULL),
(4, 'Ventes d\'armes', 'Bo - Jyo - Bâton. Bokken - Shinaï - Kodachi - Suburibokken. Etui et support pour armes. Katana - Iaïto. Tanto Aïkido', '2019-01-22 15:59:59', NULL),
(5, 'Soirée du nouvel an', 'Anglet vous offre tous les choix pour passer une soirée du jour de l\'an réussie.', '2019-01-22 15:59:59', NULL),
(6, 'Changement de président', 'Toto l\'asticot laisse place à Tata la gaga', '2019-01-22 16:04:34', NULL),
(7, 'Nouveau site', 'Contactez les membres du bureau pour vous inscrire.', '2019-01-22 16:04:34', NULL);

--
-- Déchargement des données de la table `stage_club`
--

INSERT INTO `stage_club` (`id`, `name`, `place`, `date`, `poster`) VALUES
(1, 'Stage : Minoru Mochizuki', 'Club de Bourg-en-bresse', '2019-01-16 00:00:00', NULL),
(2, 'Stage : Koichi Tohei', 'Club de Bourg-en-bresse', '2019-01-31 00:00:00', NULL),
(3, 'Stage : Michio Hikitsuchi', 'Club de Bourg-en-bresse', '2019-03-15 00:00:00', NULL),
(4, 'Stage : Morihiro Saito', 'Club de Bourg-en-bresse', '2019-07-19 00:00:00', NULL);

--
-- Déchargement des données de la table `user_grade`
--

INSERT INTO `user_grade` (`user_id`, `grade_id`) VALUES
(1, 2);

--
-- Déchargement des données de la table `user_technique`
--

INSERT INTO `user_technique` (`user_id`, `technique_id`) VALUES
(1, 2),
(1, 4),
(5, 2),
(5, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
