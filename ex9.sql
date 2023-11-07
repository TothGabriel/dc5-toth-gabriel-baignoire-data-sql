/*Requête 9. Lister les entités et leurs sources :*/
SELECT
    e.name,
    s.source
FROM
    entity e
    JOIN source s ON e.source = s.id;