/*Requête 12. Trouver le nombre d'entités associées à chaque intermédiaire :*/
SELECT
    i.name,
    COUNT(aie.entity) AS NumberOfEntities
FROM
    intermediary i
    LEFT JOIN assoc_inter_entity aie ON i.id = aie.inter
GROUP BY
    i.id,
    i.name;