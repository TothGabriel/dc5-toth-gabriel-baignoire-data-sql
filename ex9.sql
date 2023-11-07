/*Requête 9. Lister les entités et leurs sources :*/
SELECT
    e.name,
    e.jurisdiction_description,
    s.source
FROM
    entity e
    JOIN source s ON e.source = s.id;