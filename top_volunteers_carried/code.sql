SELECT v.name AS volunteer, SUM(del.delivered_kg) AS kg_delivered, COUNT(DISTINCT del.pickup_id) AS pickups
FROM volunteers v
JOIN pickups p ON p.volunteer_id = v.id
JOIN deliveries del ON del.pickup_id = p.id
GROUP BY v.id, v.name
ORDER BY kg_delivered DESC;
