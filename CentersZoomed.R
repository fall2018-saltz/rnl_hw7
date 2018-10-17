
library(ggmap)
library(ggplot2)

# Assign map data to a local variable
us <- map_data("state")

# Zoom in on color-coded map with sized state centers
map.zoomed <- ggplot(arrestsPopState, aes(map_id = tolower(state.name))) + # Define plot
  geom_map (map=us, aes(fill=Murder)) + # Add map data and define fill (color)
  expand_limits(x=us$long, y=us$lat) + # Define map limits
  coord_map(xlim=c(-84.0060, -64.0060), ylim=c(30.7128, 50.7128)) + # Define zoomed in map limits
  ggtitle("New England State Centers by Population") + # Add title
  geom_point(aes(x=arrestsPopState$x, y=arrestsPopState$y), # Add state centers
    size=arrestsPopState$population/4000000) # Define size of centers as they relate to state population size
