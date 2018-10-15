
library(ggmap)
library(ggplot2)

us <- map_data("state")

map.area <- ggplot(arrestsPopState, aes(map_id = tolower(state.name))) + 
  geom_map (map=us, aes(fill=state.area)) +
  expand_limits(x=us$long, y=us$lat) +
  coord_map()+
  ggtitle("US States by Area")