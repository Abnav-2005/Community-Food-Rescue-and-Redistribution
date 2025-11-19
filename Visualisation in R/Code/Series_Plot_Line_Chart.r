library(ggplot2)
Recent_Suc_Pickup %>%
  mutate(pickup_day = as.Date(pickup_ts)) %>%
  group_by(pickup_day) %>%
  summarize(Total_Weight = sum(weight_kg)) %>%
  ggplot(aes(x = pickup_day, y = Total_Weight)) +
  geom_line() +
  labs(title = "Daily Pickup Volume (kg) Over Time")
