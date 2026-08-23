# USStates vectors used in R Foundations
# Source: Lock5Data::USStates

states <- c(
  "Alabama", "Alaska", "Arizona", "Arkansas", "California",
  "Colorado", "Connecticut", "Delaware", "Florida", "Georgia",
  "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas",
  "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts",
  "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana",
  "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico",
  "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma",
  "Oregon", "Pennsylvania", "Rhode Island", "South Carolina",
  "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia",
  "Washington", "West Virginia", "Wisconsin", "Wyoming"
)

regions <- c(
  "S", "W", "W", "S", "W", "W", "NE", "NE", "S", "S",
  "W", "W", "MW", "MW", "MW", "MW", "MW", "S", "NE", "NE",
  "NE", "MW", "MW", "S", "MW", "W", "MW", "W", "NE", "NE",
  "W", "NE", "S", "MW", "MW", "S", "W", "NE", "NE", "S",
  "MW", "S", "S", "W", "NE", "S", "W", "S", "MW", "W"
)

fruit <- c(
  54.2, 57.9, 58.4, 54.6, 63.8, 61.9, 64.6, 60.3, NA, 59,
  57.5, 58.3, 60.9, 57.3, 58.5, 56.3, 55, 51.4, 65, 62.9,
  63.3, 60.6, 63.6, 53.2, 56.6, 60, 57.3, 58.1, 64.3, 64.9,
  58.8, 64.3, 59.7, 56, 57, 51.3, 62.3, 60.7, 65.1, 58,
  56.6, 53.9, 59.4, 62.3, 66, 60.4, 63.9, 54, 61.2, 56.7
)

physical <- c(
  56.3, 65, 63.1, 52.8, 62.2, 67, 57.3, 59.9, 60, 58.8,
  63.8, 64.7, 61.2, 61.9, 58.6, 58.5, NA, 54.5, 66.1, 59.8,
  63.5, 59.1, 62.3, 51.2, 53.9, 66.3, 60, 58.3, 63.3, 59.3,
  61.6, 58.4, 59.9, 63.5, 58, 51.1, 67, NA, 57.3, 59.1,
  59.3, 57.6, 56.5, 65.1, 66.5, 63.5, 66.5, 53.1, 58, 61
)
vegetables = c(79.4, 81.5, 78.4, 79.6, 77.5, 81.4, 
               80, 79.5, NA, 80.6, 78.1, 83.8, 83.4,
               79.1, 77, 80.3, 80.2, 74.4, 86.9, 80.8, 
               82.9, 80.9, 79.4, 76.8, 80.5, 83.1, 79.2, 
               76, 84.7, 78.7, 77.7, 79.3, 82, 77.3, 80.4, 
               79.3, 83.6, 80.6, 80.6, 79.7, 80.8, 80.3, 75.9, 
               80, 86.2, 81.9, 81, 81.1, 79.9, 80.8)

# Combine into a data frame (used in later lessons)

us_states <- data.frame(
  state = states,
  regions = regions,
  fruit = fruit,
  physical = physical, 
  vegetables = vegetables
)
