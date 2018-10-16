
library(ggmap)
library(ggplot2)

us <- map_data("state")

map.zoomed <- ggplot(arrestsPopState, aes(map_id = tolower(state.name))) +
  geom_map (map=us, aes(fill=Murder)) +
  expand_limits(x=us$long, y=us$lat) +
  coord_map(xlim=c(-84.0060, -64.0060), ylim=c(30.7128, 50.7128)) +
  ggtitle("US Map") +
  geom_point(aes(x=arrestsPopState$x, y=arrestsPopState$y), size=arrestsPopState$population/4000000)

