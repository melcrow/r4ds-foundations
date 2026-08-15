#------------------------------------------------
#------------------------------------------------
# Creating Vectors
#------------------------------------------------
#------------------------------------------------

# Create vectors using c()
se_states <- c("Florida", "Georgia", "Alabama")

# To make sure you keep track of elements, you can name each value 
se_populations <- c(FL = 21.93, GA = 10.82, AL = 5.05)
se_populations
se_populations["FL"]

# If you have the same value multiple times, use rep()
se_regions <- c("S", "S", "S") # or...
se_regions <- rep("S", each = 3)

corner_states <- c("Florida", "Georgia", "Alabama", "Washington", "Oregon")
corner_regions <- c(rep("S", each = 3), rep("W", each = 2))

# If you have a sequence of numbers, use seq() or : as a shortcut
state_nums <- c(1, 2, 3, 4, 5)
state_nums <- seq(1, 5, by = 1)
state_nums <- 1:5

# To combine different vectors, use paste()
state_ids <- paste("State", state_nums, sep = " ")

#------------------------------------------------
# YOUR TURN
#------------------------------------------------

# What happens if you run the following code? Try to explain what will happen and what you believe each of the arguments does
# Remember you can use google, AI, or ? to get help

# Example 1
colors <- rep(c("orange", "blue"), each = 2, times = 3)

# Example 2
countdown10 <- seq(from = 10, to = 1, by = -1)
countdown100 <- seq(from = 100, by = -10, length.out = 11)

# Example 3
paste("Time Remaining", countdown100, sep = ": ")

# Example 4
# How might you improve the readability a bit here?
paste(corner_states, "(Region:", corner_regions, ")", sep = "")

# Example 5
# Pay attention to data type!
state_num2 <- c(1, 2, 3, 4, "five")
state_num2

#why do these produce different results? 
state_nums + 10
state_num2 + 10 

