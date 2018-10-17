
library(ggplot2)
library(ggmap)

# Create a new dataframe with geographical data
stateStats <- data.frame(state.name, state.center, state.area)

# Merge the geographical dataframe with the combined census / arrest dataframe
arrestsPopState <- merge(arrestsPop, stateStats, by.x="State", by.y="state.name")
