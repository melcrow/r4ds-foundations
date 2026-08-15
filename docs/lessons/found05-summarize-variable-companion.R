#------------------------------------------------
#------------------------------------------------
# Lesson 5: Exploring a Variable
#------------------------------------------------
#------------------------------------------------
# install this package if needed with install.packages(Lock5Data)
library(Lock5Data)

# create vectors for this companion guide
states <- USStates$State
regions <- USStates$Region
vegetables <- USStates$Vegetables
physical <- USStates$PhysicalActivity



#------------------------------------------------
# Start with a quantitative variable
#------------------------------------------------

# Our question:
# What does vegetable consumption look like across the states?

vegetables

# How many observations do we have?

length(vegetables)

# Are there any missing values?
sum(is.na(vegetables))
states[is.na(vegetables)]

#------------------------------------------------
# Center and spread
#------------------------------------------------

# What is a typical value?
mean(vegetables, na.rm = TRUE)
median(vegetables, na.rm = TRUE)

# What are the smallest and largest values?
min(vegetables, na.rm = TRUE)
max(vegetables, na.rm = TRUE)

# What is the standard deviation
sd(vegetables, na.rm = TRUE)


#------------------------------------------------
# Look at the distribution
#------------------------------------------------
# Numerical summaries are helpful, but they do not show
# the overall shape of a distribution.

hist(vegetables)

#------------------------------------------------
# Now explore a categorical variable
#------------------------------------------------

# Our question:
# How are the 50 states distributed across regions?
regions

# Which categories are present?
unique(regions)

# How many observations are in each category?
table(regions)

# Convert the counts into proportions.
table(regions) / length(regions)


#------------------------------------------------
# Look at the categorical distribution
#------------------------------------------------

barplot(table(regions))


#------------------------------------------------
# YOUR TURN
#------------------------------------------------

# Explore the physical activity variable.

# 1. What is the mean?

# 2. What is the median?

# 3. What are the minimum and maximum values?

# 4. Create a histogram.

# 5. Describe what you notice about the distribution:
#    shape, center, spread, and possible outliers.

