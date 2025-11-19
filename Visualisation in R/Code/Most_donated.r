food_categories_are_most_often_donated %>%

  ggplot(aes(x = total_kg, 
             
             y = reorder(category, total_kg))) +
  

  geom_col(aes(fill = total_kg)) +
  
  
  geom_text(aes(label = paste0(round(total_kg, 0), " kg")), 
            hjust = -0.1,  
            size = 3) +

  labs(title = "Food Categories Ranked by Total Collected Weight",
       subtitle = "Key to planning storage and packaging logistics",
       x = "Total Collected Weight (kg)",
       y = "Food Category") +
  
 
  theme_minimal() +
  
  
  guides(fill = "none") +
  

  scale_x_continuous(expand = expansion(mult = c(0, 0.1)))
