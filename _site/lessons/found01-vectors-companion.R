############################################################
# R Foundations
# 01: Variables as Vectors
############################################################
#
# HOW TO USE THIS SCRIPT
#
# Work through this script while reading the lesson.
#
# - Run the examples as you encounter them in the lesson. To do this, put your cursor on a specific line and then press the Run button at the top of your window pane or use the keyboard shortcut command + return (mac) or Ctrl + enter (windows).
# - Before running unfamiliar code, try to predict what it will do.
# - Complete the TRY IT sections yourself.
# - Add your own comments and notes anywhere in this file.
#
# This script is yours to keep and modify.
#
# Data source:
# Selected variables from the USStates dataset in the
# Lock5Data R package.
############################################################



############################################################
# LESSON DATA
############################################################

# Each of these vectors contains information about
# the same 50 U.S. states.

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

region <- c(
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



############################################################
# 1. LOOKING AT A VECTOR
############################################################

# Typing an object's name displays the object.
states

# Use head() to preview the first few entries.
head(states)



############################################################
# 2. DIFFERENT KINDS OF VARIABLES
############################################################

# Compare the first few values of these two vectors.
head(region)
head(fruit)

# Find the R data type of a vector using typeof()
typeof(region)
typeof(fruit)


############################################################
# 3. HOW MANY VALUES ARE IN A VECTOR?
############################################################

# length() tells us how many values an object contains.
length(states)


# Suppose someone tells you that fruit also contains one
# value for every state. How could you verify that claim?
#
# YOUR CODE:


# Add a note explaining what the result tells you:
#

############################################################
# 4. LOOKING UP ONE OBSERVATION
############################################################

# Square brackets let us retrieve a value by its position.
# What is the 9th state?
states[9]


# Since the vectors describe the same states in the same order,
# position 9 refers to Florida in every vector.
region[9]
physical[9]


############################################################
# TRY IT
############################################################

# Use indexing to answer all three questions below.
#
# 1. What is the 21st state?
# 2. Which region is that state in?
# 3. What percentage of adults in that state report
#    eating fruit daily?
#
# Write your code below BEFORE checking the examples
# in the lesson.


############################################################
# YOUR NOTES
############################################################

# Add any additional notes or questions from the lesson here.
#
#
#
#
#