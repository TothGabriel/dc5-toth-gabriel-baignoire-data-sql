/*Requête 11. Lister les entités et leurs intermédiaires associés :*/
SELECT
    e.name AS EntityName,
    i.name AS IntermediaryName
FROM
    entity e
    JOIN assoc_inter_entity aie ON e.id = aie.entity
    JOIN intermediary i ON aie.inter = i.id;