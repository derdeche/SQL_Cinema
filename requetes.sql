/*-----A-----Informations d’un film (id_film) : titre, année, durée (au format HH:MM) et
réalisateur*/
SELECT titre, anneeSortie, duree, nom FROM film f

INNER JOIN realisateur r ON f.id_realisateur = r.id_realisateur
INNER JOIN personne p ON r.id_personne = p.id_personne

WHERE f.id_film = 1

/*-----B-----Liste des films dont la durée excède 2h15 classés par durée (du + long au + court)*/
SELECT titre ,duree FROM film  WHERE duree >135
ORDER BY duree DESC

/*-----C-----Liste des films d’un réalisateur (en précisant l’année de sortie)*/
SELECT titre ,anneeSORTIE FROM film f
WHERE f.id_realisateur = 2

/*-----D-----Nombre de films par genre (classés dans l’ordre décroissant)*/
SELECT genre, COUNT(genre) AS nombre FROM film f

INNER JOIN action a ON f.id_film = a.id_film
INNER JOIN genre g ON a.id_genre = g.id_genre


GROUP BY genre 
ORDER BY nombre DESC

/*-----E-----Nombre de films par réalisateur (classés dans l’ordre décroissant) sélectionné*/
SELECT CONCAT(nom,' ', prenom) AS realisateurFilm,  COUNT(titre) AS nombre 
FROM film 
INNER JOIN realisateur ON film.id_realisateur = realisateur.id_realisateur
INNER JOIN personne ON realisateur.id_personne = personne.id_personne
GROUP BY realisateur.id_realisateur 
ORDER BY nombre DESC

/*-----F-----Casting d’un film en particulier (id_film) : nom, prénom des acteurs + sexe*/
SELECT nom, prenom, sexe 
FROM personne 
INNER JOIN acteur  ON personne.id_personne = acteur.id_personne
INNER JOIN jouer  ON acteur.id_acteur = jouer.id_acteur
WHERE id_film = 2

/*-----G-----Films tournés par un acteur en particulier (id_acteur) avec leur rôle et l’année de
sortie (du film le plus récent au plus ancien)*/

SELECT titre ,nom ,prenom, anneeSortie, role
FROM personne p
INNER JOIN acteur a  ON p.id_personne = a.id_personne
INNER JOIN jouer j ON a.id_acteur = j.id_acteur
INNER JOIN film f ON j.id_film = f.id_film
INNER JOIN role r ON j.id_role = r.id_role
WHERE a.id_acteur = 3

/*-----H-----Liste des personnes qui sont à la fois acteurs et réalisateurs*/

/*-----I-----Liste des films qui ont moins de 5 ans (classés du plus récent au plus ancien)*/
SELECT titre, anneeSortie
FROM film f
WHERE anneeSortie > NOW()-5
ORDER BY anneeSortie DESC 

/*-----J-----Nombre d’hommes et de femmes parmi les acteurs*/
SELECT sexe, COUNT(sexe) AS nombre
FROM personne 
ORDER BY sexe

/*-----K-----Liste des acteurs ayant plus de 50 ans (âge révolu et non révolu)*/
SELECT nom, dateNaissance
FROM personne p
WHERE (DATE_FORMAT(NOW(), "%Y")- DATE_FORMAT(dateNaissance, "%Y")) >50

/*-----L-----Acteurs ayant joué dans 3 films ou plus*/
SELECT nom, prenom, COUNT(j.id_film) AS nombreFilm
FROM personne p
INNER JOIN acteur a ON a.id_personne = p.id_personne
INNER JOIN jouer j ON j.id_acteur = a.id_acteur
GROUP BY p.id_personne
HAVING COUNT(j.id_film) > 3;












