
library(ggplot2)
library(ggmap)
arrestsPop$State <- rownames(arrestsPop)

stateStats <- data.frame(state.name, state.center, state.area)
arrestsPopState <- merge(arrestsPop, stateStats, by.x="State", by.y="state.name")
