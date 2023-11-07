/*Requête 16. Trouver le nombre d'entités par pays :*/
SELECT
    c.country,
    COUNT(e.id) AS NumberOfEntities
FROM
    entity e
    JOIN country c ON e.country_id = c.id
GROUP BY
    c.country;