/*
Requête 18. Trouver les entités qui ont des associations avec des officiers de plus de 2 pays différents :
*/
SELECT
    e.id,
    e.name,
    COUNT(DISTINCT o.country_id) AS NumberOfCountries
FROM
    entity e
    JOIN assoc_officer_entity aoe ON e.id = aoe.entity
    JOIN officer o ON aoe.officer = o.id
GROUP BY
    e.id,
    e.name
HAVING
    COUNT(DISTINCT o.country_id) > 2;