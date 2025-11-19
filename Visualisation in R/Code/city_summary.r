City.level.summary %>%
  
  
  pivot_longer(
    cols = c(total_collected_kg, total_delivered_kg), 
    names_to = "metric", 
    values_to = "weight_kg"
  ) %>%
  

  ggplot(aes(x = city, 
             y = weight_kg, 
             fill = metric)) +
  
 
  geom_col(position = "dodge") +
  
 
  labs(title = "City-Level Food Supply vs. Demand Met",
       subtitle = "Comparing collected vs. delivered weight (kg)",
       x = "City",
       y = "Total Weight (kg)",
       fill = "Metric") +
  
 
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
