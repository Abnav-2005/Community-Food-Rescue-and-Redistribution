SELECT f.category, COUNT(p.id) AS pickup_count, SUM(p.weight_kg) AS total_kg
FROM pickups p
JOIN food_items f ON p.food_item_id = f.id
WHERE p.status = 'picked_up'
GROUP BY f.category
ORDER BY total_kg DESC;
