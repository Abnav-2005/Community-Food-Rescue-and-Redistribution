SELECT d.city AS city,
       SUM(p.weight_kg) AS total_collected_kg,
       COALESCE(SUM(del.delivered_kg),0) AS total_delivered_kg
FROM donors d
JOIN pickups p ON p.donor_id = d.id AND p.status = 'picked_up'
LEFT JOIN deliveries del ON del.pickup_id = p.id
GROUP BY d.city;
