# Getting Started with R (2024)
# Session 2 of 4
# Freddie Heather

# Recap

# Vectors
1:5
c(1,2,3,4,5) # exactly the same as 1:5
c("cat", "dog", "pig") # also a vector of length 3

# Objects
any_name <- 5 # this is an object
# the number 5 is stored in the object that I have named "any_name"

# Object classes
class(any_name) # 5 is stored in "any_name" and 5 is "numeric"
any_name2 <- "Centrostephanus rodgersii" 
class(any_name2) # this object class is "character"

# functions
# class() above is an example of a function
# c() is also an example of a function
sum(1:4) # sums the numbers 1,2,3 and 4

# "==" operator means is this exactly equal to.
any_name == "five"
any_name == 6
any_name == 5

# Reading in data
read.csv()
read_csv() # this requires us to install another package



# installing a package
install.packages("readr") # readr is the name of the package
# it contains the function called "read_csv()"
# once the package is installed we need to load it
library(readr)

# now, and only now, can we use the functions inside this package
read_csv("example_data.csv")



# Not all packages are just functions, some contain data
library(nycflights13)
# you should now have an object called "flights"
# create a new object and assign "flights" to this object
my_data <- flights
# see it appear in your "Environment"
