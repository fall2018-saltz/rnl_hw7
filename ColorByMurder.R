
us <- map_data("state")

map.murder <- ggplot(arrestsPopState, aes(map_id = tolower(state.name))) + 
  geom_map (map=us, aes(fill=Murder)) +
  expand_limits(x=us$long, y=us$lat) +
  coord_map() +
  ggtitle("US Map")
