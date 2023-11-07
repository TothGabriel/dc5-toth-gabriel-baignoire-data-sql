/*Requête 6. Trouver tous les intermédiaires et leurs adresses associées :*/
SELECT i.id, i.name, a.address, a.countries
FROM intermediary i
JOIN address a ON i.id_address = a.id_address;
