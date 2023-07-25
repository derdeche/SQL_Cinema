-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage des données de la table cinema.acteur : ~4 rows (environ)
INSERT INTO `acteur` (`id_acteur`, `id_personne`) VALUES
	(1, 4),
	(2, 5),
	(3, 6),
	(4, 7);

-- Listage des données de la table cinema.action : ~4 rows (environ)
INSERT INTO `action` (`id_film`, `id_genre`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4);

-- Listage des données de la table cinema.film : ~4 rows (environ)
INSERT INTO `film` (`id_film`, `titre`, `anneeSortie`, `duree`, `synopsis`, `note`, `affiche`, `id_realisateur`) VALUES
	(1, 'batman le defi', 1992, 126, 'Non seulement Batman doit affronter le Pingouin, monstre génétique doté d\'une intelligence à toute épreuve, qui sème la terreur mais, plus difficile encore, il doit faire face à la séduction de deux super-femmes', 4, 'batman_defi.jpg', 1),
	(2, 'batman_forever', 1995, 135, 'Nul ne sait que Bruce Wayne, le patron d\'un vaste et puissant consortium, l\'homme le plus riche des Etats-Unis, revêt chaque nuit la combinaison et le masque de cuir de Batman pour voler au secours de ses ', 5, 'batman_forever.jpg', 2),
	(3, 'batman et robin', 1997, 140, 'Dans cette nouvelle aventure, Batman aura bien besoin de son audacieux partenaire Robin, juché sur sa fringante moto turbo.', 3, 'robin.jpg', 2),
	(4, 'batman begins', 2005, 145, 'Non seulement Batman doit affronter le Pingouin, monstre génétique doté d\'une intelligence à toute épreuve', 5, 'begins.jpg', 3);

-- Listage des données de la table cinema.genre : ~4 rows (environ)
INSERT INTO `genre` (`id_genre`, `genre`) VALUES
	(1, 'action'),
	(2, 'fiction'),
	(3, 'adventure'),
	(4, 'comedie');

-- Listage des données de la table cinema.jouer : ~4 rows (environ)
INSERT INTO `jouer` (`id_film`, `id_acteur`, `id_role`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 1);

-- Listage des données de la table cinema.personne : ~7 rows (environ)
INSERT INTO `personne` (`id_personne`, `nom`, `prenom`, `sexe`, `dateNaissance`) VALUES
	(1, 'Tim', 'Burton', 'male', '1958-08-25'),
	(2, 'Joel', 'Schumacher', 'male', '1939-08-29'),
	(3, 'Cristopher', 'Nolan', 'male', '1970-07-30'),
	(4, 'Michael', 'Keaton ', 'male', '1951-09-05'),
	(5, 'Val', 'Kilmer', 'male', '1959-12-31'),
	(6, 'George', 'Clooney', 'male', '1961-05-06'),
	(7, 'christian', 'Bale', 'male', '1974-01-30');

-- Listage des données de la table cinema.realisateur : ~3 rows (environ)
INSERT INTO `realisateur` (`id_realisateur`, `id_personne`) VALUES
	(1, 1),
	(2, 2),
	(3, 3);

-- Listage des données de la table cinema.role : ~1 rows (environ)
INSERT INTO `role` (`id_role`, `ROLE`) VALUES
	(1, 'Batman');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */ ;
