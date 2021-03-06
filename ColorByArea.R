
library(ggmap)
library(ggplot2)

# Assign map data to a local variable
us <- map_data("state")

# Create a color coded map by state area
map.area <- ggplot(arrestsPopState, aes(map_id = tolower(state.name))) + # Define plot
  geom_map (map=us, aes(fill=state.area)) + # Add map data and define fill (color)
  expand_limits(x=us$long, y=us$lat) + # Define map limits
  coord_map() + # Ensure map coordinates are normalized
  ggtitle("US States by Area") # Add title
