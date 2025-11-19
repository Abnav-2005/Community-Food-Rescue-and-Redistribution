SELECT d.name AS donor, SUM(p.weight_kg) AS total_collected_kg, COUNT(p.id) AS pickup_count
FROM pickups p
JOIN donors d ON p.donor_id = d.id
WHERE p.status = 'picked_up'
GROUP BY d.name
ORDER BY total_collected_kg DESC;
