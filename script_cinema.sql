
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `cinema`;

CREATE TABLE IF NOT EXISTS 'REALISATEUR'(
   'id_realisateur' INT (11) NOT NULL,
   'id_personne' INT (11) NOT NULL,
   PRIMARY KEY('id_realisateur'),AUTO_INCREMENT,
   UNIQUE('id_personne'),
   FOREIGN KEY('id_personne') REFERENCES 'PERSONNE'('id_personne')
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40000 ALTER TABLE `REALISATEUR` DISABLE KEYS */
INSERT INTO `REALISATEUR` (`id_realisateur`, `id_personne`) VALUES
(1, 1);
(2, 2);
(3, 3);
(4, 4);
(5, 5);
/*!40000 ALTER TABLE `REALISATEUR` DISABLE KEYS */


CREATE TABLE IF NOT EXISTS 'FILM'(
   'id_film' INT,
   'titre' VARCHAR(50) NOT NULL,
   'anneeSortie' INT NOT NULL,
   'duree' INT NOT NULL,
   'synopsis' VARCHAR(255) NOT NULL,
   'note' INT NOT NULL,
   'affiche' VARCHAR(255) NOT NULL,
   'id_realisateur' INT NOT NULL,
   PRIMARY KEY('id_film'),AUTO_INCREMENT,
   FOREIGN KEY('id_realisateur') REFERENCES 'REALISATEUR'('id_realisateur')
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40000 ALTER TABLE `FILM` DISABLE KEYS */
INSERT INTO `REALISATEUR` (`id_film`, `id_titre`, 'anneeSortie','duree', 'synopsis','note','affiche','id_realisateur') VALUES
(1, 11, 1992, 126, "Non seulement Batman doit affronter le Pingouin, monstre génétique doté d'une intelligence à toute épreuve, qui sème la terreur mais, plus difficile encore, il doit faire face à la séduction de deux super-femmes", 4,'batman_defi.jpg',1  );
(2, 22, 1995, 135, "Nul ne sait que Bruce Wayne, le patron d'un vaste et puissant consortium, l'homme le plus riche des Etats-Unis, revêt chaque nuit la combinaison et le masque de cuir de Batman pour voler au secours de ses concitoyens injustement opprimés. Personne, hormis son fidèle maître d'hôtel Alfred et son vieil ami, le commissaire Gordon", 5,'batman_forever.jpg',2  );
(3, 33, 1997, 140, "Dans cette nouvelle aventure, Batman aura bien besoin de son audacieux partenaire Robin, juché sur sa fringante moto turbo. En effet, le glacial M. Freeze fait régner une vague de froid polaire sur Gotham City avec la complicité de la belle et vénéneuse Poison Ivy", 3,'robin.jpg',2  );
(4, 45, 2005, 145, "Non seulement Batman doit affronter le Pingouin, monstre génétique doté d'une intelligence à toute épreuve, qui sème la terreur mais, plus difficile encore, il doit faire face à la séduction de deux super-femmes", 5,'begins.jpg',3  );
/*!40000 ALTER TABLE `FILM` DISABLE KEYS */

CREATE TABLE IF NOT EXISTS 'JOUER'(
   'id_film' INT,
   'id_acteur' INT,
   'id_role' VARCHAR(50),
   PRIMARY KEY('id_film, id_acteur, id_role'),AUTO_INCREMENT,
   FOREIGN KEY('id_film') REFERENCES 'FILM'('id_film'),
   FOREIGN KEY('id_acteur') REFERENCES 'ACTEUR'('id_acteur'),
   FOREIGN KEY('id_role') REFERENCES ROLE('id_role'),
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40000 ALTER TABLE `JOUER` DISABLE KEYS */
INSERT INTO `REALISATEUR` (`id_film`, `id_acteur`, 'id_role') VALUES
(1, 1, 1);
(2, 2, 1);
(3, 3, 1);
(4, 4, 1);
/*!40000 ALTER TABLE `JOUER` DISABLE KEYS */


CREATE TABLE IF NOT EXISTS 'ACTION'(
   'id_film' INT,
   'id_genre' INT,
   PRIMARY KEY('id_film, id_genre'),AUTO_INCREMENT,
   FOREIGN KEY('id_film') REFERENCES 'FILM'('id_film'),
   FOREIGN KEY('id_genre') REFERENCES 'GENRE'('id_genre')
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40000 ALTER TABLE `ACTION` DISABLE KEYS */
(1, 1);
(2, 2);
(3, 3);
(4, 4);
/*!40000 ALTER TABLE `ACTION` DISABLE KEYS */

CREATE TABLE IF NOT EXISTS 'GENRE'(
   'id_genre' INT,
   'genre' VARCHAR(50) NOT NULL,
   PRIMARY KEY('id_genre'),AUTO_INCREMENT,
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40000 ALTER TABLE `ACTION` DISABLE KEYS */
(1, 'action');
(2,'fiction');
(3,'adventure');
(4, 'comedie');
/*!40000 ALTER TABLE `ACTION` DISABLE KEYS */

CREATE TABLE IF NOT EXISTS 'ROLE'(
   'id_role' VARCHAR(50),
   role VARCHAR(50) NOT NULL,
   PRIMARY KEY('id_role'),AUTO_INCREMENT,
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */
(1);
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */

CREATE TABLE IF NOT EXISTS 'PERSONNE'(
   'id_personne' INT,
   'nom' VARCHAR(50) NOT NULL,
   'prenom' VARCHAR(50) NOT NULL,
   'sexe' LOGICAL NOT NULL,
   'dateNaissance' DATE NOT NULL,
   PRIMARY KEY('id_personne'),AUTO_INCREMENT,
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40000 ALTER TABLE `PERSONNE` DISABLE KEYS */


/*!40000 ALTER TABLE `PERSONNE` DISABLE KEYS */

CREATE TABLE IF NOT EXISTS 'ACTEUR'(
   'id_acteur' INT,
   'id_personne' INT NOT NULL,
   PRIMARY KEY('id_acteur'),AUTO_INCREMENT,
   UNIQUE('id_personne'),
   FOREIGN KEY('id_personne') REFERENCES 'PERSONNE'('id_personne')
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


/*!40000 ALTER TABLE `ACTEUR` DISABLE KEYS */
(1,6);
(2,7);
(3,8);
(4,9);

/*!40000 ALTER TABLE `ACTEUR` DISABLE KEYS */




