library(dplyr)
library(ggplot2)
Total_Food_Collected_per_Donor<-read_csv("Total_Food_Collected_per_Donor.csv")

Total_Food_Collected_per_Donor %>%
  
  
  slice_max(order_by = total_collected_kg, n = 20) %>% 

  ggplot(aes(x = total_collected_kg, 
             y = reorder(donor, total_collected_kg))) +
  
  
  geom_col(fill = "steelblue") +
  
  geom_text(aes(label = round(total_collected_kg, 1)), 
            hjust = -0.1,  
            size = 3) +
  
  
  labs(title = "Top 20 Donor Contribution Ranking",
       subtitle = "Ranked by Total Collected Weight (kg)",
       x = "Total Collected Weight (kg)",
       y = "Donor Name") +
  
  
  theme_minimal() +
  scale_x_continuous(expand = expansion(mult = c(0, 0.15)))
