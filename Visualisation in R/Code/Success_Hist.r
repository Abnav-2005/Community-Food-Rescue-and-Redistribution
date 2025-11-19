Recent_Suc_Pickup %>%
  group_by(volunteer) %>%
  summarize(Total_Weight = sum(weight_kg)) %>%
  arrange(desc(Total_Weight)) %>%
  ggplot(aes(x = Total_Weight, y = reorder(volunteer, Total_Weight))) +
  geom_col() +
  labs(title = "Total Weight Collected by Volunteer (kg)")
