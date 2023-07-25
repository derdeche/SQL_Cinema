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




