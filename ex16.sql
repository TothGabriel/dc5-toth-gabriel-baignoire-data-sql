/*Requête 16. Trouver le nombre d'entités par pays :*/
SELECT
    c.country,
    COUNT(e.id) AS NumberOfEntities
FROM
    entity e
    JOIN address a ON e.id_address = a.id_address
    JOIN country c ON a.countries = c.code
GROUP BY
    c.country;