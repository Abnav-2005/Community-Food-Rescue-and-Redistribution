SELECT s.name AS shelter, s.city, SUM(delivered_kg) AS total_received_kg, COUNT(DISTINCT del.pickup_id) AS pickups_received
FROM deliveries del
JOIN shelters s ON del.shelter_id = s.id
GROUP BY s.id, s.name, s.city
ORDER BY total_received_kg DESC;
