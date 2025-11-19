
To_find_lost_undelivered_weight %>%
  
  ggplot(aes(x = picked_kg, 
             y = delivered_kg, 
            
             color = discrepancy_kg)) + 
 
  geom_point(alpha = 0.7, size = 3) +
  
  geom_abline(intercept = 0, slope = 1, linetype = "dashed", color = "red") +
  
  
  scale_color_gradient2(low = "red", mid = "blue", high = "purple", 
                        midpoint = 0, 
                        name = "Discrepancy (kg)") +
  
  labs(title = "Audit of Pickups: Picked vs. Delivered Weight Discrepancies",
       subtitle = "Red dashed line indicates zero loss/gain (Picked = Delivered)",
       x = "Total Picked Weight (kg)",
       y = "Total Delivered Weight (kg)") +
  
  theme_minimal()
