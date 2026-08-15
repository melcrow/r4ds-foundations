#------------------------------------------------
#------------------------------------------------
# Lesson 3: Select Observations
#------------------------------------------------
#------------------------------------------------

# Ignore this; used to generate data..
#library(Lock5Data)
#USStates |> slice_head(n = 15) |> select(State, Region, Population, HouseholdIncome, StudentSpending) |> dput( )

# Create some vectors for examples
# Let's focus on the first 15 states
states <- c("Alabama", "Alaska", "Arizona", "Arkansas", "California",
           "Colorado", "Connecticut", "Delaware", "Florida", "Georgia",
           "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa")
regions <- c("S", "W", "W", "S", "W",
            "W", "NE", "NE", "S", "S",
            "W", "W", "MW", "MW", "MW")
populations <- c(5.054, 0.734, 7.268, 3.033, 39.243,
                5.811, 3.598, 1.006, 21.929, 10.823,
                1.446, 1.893, 12.693, 6.812, 3.196)
house_income <- c(62.212, 86.631, 77.315, 58.7, 95.521, 
            92.911, 91.665, 81.361, 73.311, 74.632, 
            95.322, 74.942, 80.306, 69.477, 71.433)
student_spending <- c(10107, 18393, 8773, 10412, 13641,
                      11072, 2114, 15929, 9986, 11203,
                      16132, 8043, 16281, 10252, 11933)

#------------------------------------------------
# Logical values record TRUE or FALSE
#------------------------------------------------
# How can we identify observations that satisfy a condition?

# Recall that Florida is the 9th state in our vector.
states[9]
populations[9]

# Is Florida's population greater than 10 million?
populations[9] > 10

# Is Florida's population less than 5 million?
populations[9] < 5


#------------------------------------------------
# Compare every value in a vector
#------------------------------------------------
# Instead of comparing one state at a time,
# we can compare every value in a vector.

populations > 10
populations <= 5

regions == "S"
regions != "W"


#------------------------------------------------
# Logical vectors are vectors too
#------------------------------------------------

# A comparison creates a logical vector:
# one TRUE or FALSE value for each observation.

large_population <- populations > 10
large_population

# Notice that large_population vector has the same 
# length as the original vectors.

length(large_population)
length(states)


#------------------------------------------------
# Count observations that satisfy a condition
#------------------------------------------------

# In calculations, TRUE acts like 1 and FALSE acts like 0.
# This means sum() can count how many values are TRUE.

sum(large_population)

# We can also write the comparison directly inside sum().

sum(populations > 10)

# How many states are in the South?

sum(regions == "S")


#------------------------------------------------
# Use logical vectors to select observations
#------------------------------------------------

# Recall that [ ] can select values from a vector.

# Now, instead of giving R a position,
# we can give it a logical vector.

states[large_population]

# R keeps the values where large_population is TRUE.

populations[large_population]

# We can also put the comparison directly inside [ ].

states[populations > 10]
populations[populations > 10]


#------------------------------------------------
# Another example: Household income
#------------------------------------------------

# Which states have median household income above 80
# (measured here in thousands of dollars)?

high_income <- house_income > 80

high_income

sum(high_income)

states[high_income]

house_income[high_income]


#------------------------------------------------
# YOUR TURN
#------------------------------------------------
# Consider student_spending:
# the amount spent per pupil on education in each state.

# 1. Which observations have student spending above $15,000?

# 2. How many states meet that condition?

# 3. Which states meet that condition?

# 4. What are the spending amounts for those states?



#------------------------------------------------
# OPTIONAL TOPIC: Combining Conditions
#------------------------------------------------

# Sometimes a research question involves more than one condition.

# & means AND:
# both conditions must be TRUE.

# Which states have populations greater than 10 million
# AND less than 30 million?

populations > 10 & populations < 30

states[populations > 10 & populations < 30]


# | means OR:
# at least one condition must be TRUE.

# Which states are in the West OR the Midwest?

regions == "W" | regions == "MW"

states[regions == "W" | regions == "MW"]

#------------------------------------------------
# OPTIONAL TOPIC: Use named vectors to simplify output
#------------------------------------------------
# You can assign names to each element in a vector.
named_populations <-c(AL = 5.054, AK = 0.734, AZ = 7.268, AR = 3.033, CA = 39.243,
                      CO = 5.811, CT = 3.598, DE = 1.006, FL = 21.929, GA = 10.823,
                      HI = 1.446, ID = 1.893, IL = 12.693, IN = 6.812, IA = 3.196)
named_populations

# This helps make the output clearer, and allows you to select elements by name:
named_populations["FL"]
named_populations[named_populations > 10]

