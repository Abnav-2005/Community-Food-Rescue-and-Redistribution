Total_kg_delivered_to_shelter %>%
  
 
  slice_max(order_by = total_received_kg, n = 20) %>% 
  
 
  ggplot(aes(x = total_received_kg, 
            
             y = reorder(paste(shelter, " (", city, ")"), 
                         total_received_kg))) +
  
  geom_col(aes(fill = total_received_kg)) +
  
  geom_text(aes(label = round(total_received_kg, 1)), 
            hjust = -0.1, 
            size = 3) +
  
  
  labs(title = "Top 20 Shelters by Food Received Volume (by Location)",
       subtitle = "Ranked by Total Received Weight (kg)",
       x = "Total Received Weight (kg)",
       y = "Shelter Name and Location") +
  
  theme_minimal() +
  scale_x_continuous(expand = expansion(mult = c(0, 0.15)))
