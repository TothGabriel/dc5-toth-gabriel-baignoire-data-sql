/*Requête 19. Lister les officiers qui ont des associations avec des entités et des intermédiaires :*/
SELECT
    DISTINCT o.id,
    o.name
FROM
    officer o
    JOIN assoc_officer_entity aoe ON o.id = aoe.officer
    JOIN assoc_officer_interm aoi ON o.id = aoi.officer;