/*Requête 15. Trouver les entités et officiers associés qui ont une relation avant une certaine date (par exemple, le 1er janvier 2010) :*/
SELECT
    e.name AS EntityName,
    o.name AS OfficerName,
    aoe.start_date
FROM
    entity e
    JOIN assoc_officer_entity aoe ON e.id = aoe.entity
    JOIN officer o ON aoe.officer = o.id
WHERE
    aoe.start_date < '2010-01-01';