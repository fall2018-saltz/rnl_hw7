
library(ggmap)
library(ggplot2)

# Assign map data to a local variable
us <- map_data("state")

map.population <- ggplot(arrestsPopState, aes(map_id = tolower(state.name))) + 
  geom_map (map=us, aes(fill=Murder)) +
  expand_limits(x=us$long, y=us$lat) +
  coord_map() +
  ggtitle("US State Centers by Population") +
  geom_point(aes(x=arrestsPopState$x, y=arrestsPopState$y), size=arrestsPopState$population/4000000)


us <- map_data("state")


map.murder <- ggplot(arrestsPopState, aes(map_id = tolower(state.name))) + # Define plot
  geom_map (map=us, aes(fill=Murder)) + # Add map data and define fill (color)
  expand_limits(x=us$long, y=us$lat) + # Define map limits
  coord_map() + # Ensure map coordinates are normalized
  ggtitle("US States by Murder") # Add title
