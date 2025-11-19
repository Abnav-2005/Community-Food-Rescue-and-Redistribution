install.packages("treemap")
library(treemap)




treemap(
  dtf = food_categories_are_most_often_donated,         # Data frame
  index = "category",          # Column to define the tiles (Food Category)
  vSize = "total_kg",          # Column to define the size of the tiles (Total Weight)
  vColor = "pickup_count",     # Column to define the color (e.g., color by number of pickups)
  type = "value",              # Color by the value of vColor
  title = "Distribution of Food Types by Collected Weight (kg)",
  fontsize.labels = c(12, 8),
  border.lwds = 1.5,
  palette = "Greens"
)
