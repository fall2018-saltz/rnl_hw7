
arrestsPop$State <- rownames(arrestsPop)
library(ggplot2)
library(ggmap)
stateStats <- data.frame(state.name, state.center, state.area)
arrestsPopState <- merge(arrestsPop, stateStats, by.x="State", by.y="state.name")
