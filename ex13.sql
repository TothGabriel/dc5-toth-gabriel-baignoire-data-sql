/*Requête 13. Requête 13. Lister les intermédiaires et le nombre d'entités et d'officiers associés : :*/

SELECT 
    i.name AS IntermediaryName,
    COUNT(DISTINCT aie.entity) AS NumberOfEntities,
    COUNT(DISTINCT aio.officer) AS NumberOfOfficers
FROM 
    intermediary i
LEFT JOIN assoc_inter_entity aie ON i.id = aie.inter
LEFT JOIN assoc_inter_offi aio ON i.id = aio.inter
GROUP BY 
    i.id;
