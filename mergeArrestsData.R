
# Copy the arrests data to a local variable
arrests <- USArrests

# Create a merged dataframe with census data and arrest data
# Create a new column in arrests with state names
arrests$State <- rownames(arrests)
# Remove the District of Columbia from the census data 
population <- clean_data[which(clean_data$stateName!="District of Columbia"),]
# Combine the two dataframes
arrestsPop <- cbind(arrests, population)
# Remove the duplicate column
arrestsPop <- arrestsPop[,-6]

