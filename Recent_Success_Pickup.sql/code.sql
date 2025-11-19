SELECT p.id AS pickup_id, d.name AS donor, v.name AS volunteer, f.name AS item, p.weight_kg, p.pickup_ts
FROM pickups p
JOIN donors d ON p.donor_id = d.id
JOIN volunteers v ON p.volunteer_id = v.id
JOIN food_items f ON p.food_item_id = f.id
WHERE p.status = 'picked_up'
  AND p.pickup_ts >= '2025-11-11 00:00:00'
ORDER BY p.pickup_ts DESC;
