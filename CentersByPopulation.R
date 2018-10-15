
library(ggmap)
library(ggplot2)

us <- map_data("state")

map.population <- map.murder +
  geom_point(aes(x=arrestsPopState$x, y=arrestsPopState$y), size=arrestsPopState$Population/4000000)
