#------------------------------------------------
#------------------------------------------------
# Lesson 4: Understanding Missing Values
#------------------------------------------------
#------------------------------------------------
# install this package if needed with install.packages(Lock5Data)
library(Lock5Data)

# create vectors for this companion guide
states <- USStates$State
regions <- USStates$Region
physical <- USStates$PhysicalActivity
fruit <- USStates$Fruit


#------------------------------------------------
# NA means "unknown"
#------------------------------------------------

# NA represents a value that is missing or unknown.
# It is not the same as 0.

quiz_scores <- c(8, 10, NA, 7, 9)

quiz_scores

# What happens when we do arithmetic with a missing value?

NA + 5
NA * 2

# If one value is unknown, the result of a calculation
# involving that value is also unknown.


#------------------------------------------------
# Missing values affect summaries
#------------------------------------------------

# What is the average of these scores?

mean(quiz_scores)

# R does not automatically ignore missing values.
# If it did, we might accidentally analyze incomplete data
# without realizing it.

# We can tell R to remove missing values for this calculation.

mean(quiz_scores, na.rm = TRUE)


#------------------------------------------------
# Find missing values with is.na()
#------------------------------------------------

# Let's move to our data on the 50 U.S. states.
# `fruit` measures the % of people who report eating fruit at least once per day

fruit

# is.na() asks:
# "Is this value missing?"

is.na(fruit)

# The result is a logical vector:
# TRUE = missing
# FALSE = not missing


#------------------------------------------------
# Count missing values
#------------------------------------------------

# Because TRUE acts like 1 and FALSE acts like 0,
# we can use sum() to count missing values.

sum(is.na(fruit))

# How many physical activity values are missing?

sum(is.na(physical))


#------------------------------------------------
# Find the observations with missing data
#------------------------------------------------

# Logical indexing can help us identify
# which states have missing values.

states[is.na(fruit)]

states[is.na(physical)]


#------------------------------------------------
# Find the proportion of values that are missing
#------------------------------------------------

# We can divide the number missing by the total number
# of observations.

sum(is.na(physical)) / length(physical)

# mean() provides a shortcut because TRUE = 1 and FALSE = 0.

mean(is.na(physical))


#------------------------------------------------
# Keep only the non-missing values
#------------------------------------------------

# ! means NOT.
is.na(fruit) # which values are missing?
!is.na(fruit) # which values are NOT missing?

# Keep only the observed fruit values.

fruit_noNA <- fruit[!is.na(fruit)]

fruit_noNA

length(fruit)
length(fruit_noNA)

# What if we try the same thing with the state names?
states_noNA <- states[!is.na(fruit)]
states_noNA
length(states_noNA)

# These two vectors still line up because we used
# the same logical vector to filter both of them.
length(states_noNA)
length(fruit_noNA)


#------------------------------------------------
# Compare summaries with and without missing values
#------------------------------------------------

# Without instructions for handling NA:
mean(fruit)

# Remove missing values for this calculation:
mean(fruit, na.rm = TRUE)

# We could get the same result by first selecting
# only the non-missing values:
mean(fruit_noNA)
mean(fruit[!is.na(fruit)])


#------------------------------------------------
# YOUR TURN
#------------------------------------------------

# Use the physical activity vector to answer the following.

# 1. Create a logical vector showing which physical activity
#    values are missing.
#
#
#

# 2. How many states are missing physical activity data?
#
#
#

# 3. What proportion of states are missing physical activity data?
#
#
#

# 4. Which states are missing physical activity data?
#
#
#

# 5. Find the mean physical activity value among states
#    with reported data.
#
#
#


#------------------------------------------------
# IMPORTANT: Removing NA is a decision
#------------------------------------------------

# na.rm = TRUE tells R to ignore missing values
# for a particular calculation.

# That does NOT mean missing values should always be ignored.

# Before removing missing data, we should ask questions like:
#
# Why are the values missing?
# How much data is missing?
# Could the missing observations be systematically different?
# Does removing them change the population our analysis describes?
#
# We will return to these questions later.