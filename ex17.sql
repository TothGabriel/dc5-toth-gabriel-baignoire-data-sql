/*Requête 17. Lister les intermédiaires qui ont des associations avec plus de 5 entités :
*/

SELECT
    i.id,
    i.name,
    COUNT(aie.entity) AS NumberOfEntities
FROM
    intermediary i
    JOIN assoc_inter_entity aie ON i.id = aie.inter
GROUP BY
    i.id,
    i.name
HAVING
    COUNT(aie.entity) > 5;