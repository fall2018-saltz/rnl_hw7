
library(ggmap)
library(ggplot2)

us <- map_data("state")

map.population <- ggplot(arrestsPopState, aes(map_id = tolower(state.name))) + 
  geom_map (map=us, aes(fill=Murder)) +
  expand_limits(x=us$long, y=us$lat) +
  coord_map() +
  ggtitle("US Map") +
  geom_point(aes(x=arrestsPopState$x, y=arrestsPopState$y), size=arrestsPopState$Population)
