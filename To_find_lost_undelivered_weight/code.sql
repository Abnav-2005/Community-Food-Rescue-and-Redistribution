SELECT p.id AS pickup_id, d.name AS donor, p.weight_kg AS picked_kg,
       COALESCE(SUM(del.delivered_kg), 0) AS delivered_kg,
       p.weight_kg - COALESCE(SUM(del.delivered_kg), 0) AS discrepancy_kg
FROM pickups p
JOIN donors d ON p.donor_id = d.id
LEFT JOIN deliveries del ON del.pickup_id = p.id
WHERE p.status = 'picked_up'
GROUP BY p.id, d.name, p.weight_kg
HAVING (p.weight_kg - COALESCE(SUM(del.delivered_kg),0)) <> 0;
