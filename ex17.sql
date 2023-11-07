/**/

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