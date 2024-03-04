## Script for the first workshop of Demystifying R workshops 
## Feb 27, 2024

#---- @# you can add any symbols or characters after this hashatg sign and as long as you do not introduce line breaks, everything in that line will be interpreted as a comment 

# --- Basic operations

# addition
# numeric output
1 + 3

# You can of course do other operations 

1*3 #multiple - NOTE the comment can also be after the command line 

1/3 # divide 

3^2 # raise to the power

#NOTE - you up and down arrows to cycle through the commands that you already typed

log10(100) # take a logarithm. Note that if you want a logarithm base to be 10 you need to indicate it 
log(100) #this would imply a natural logarithm, often denoted as ln (but not in R)

# ---- Vectors 

# numeric vector (i.e. a series of numbers)
1:5

# or 

c(1,2,3,4,5)

# Arithmetic on a vector
(1:5)*2

# Or let's create two vectors and add them 
c(1:5) + (1:5) ## notice that you can refer to a vector with c symbol before or without it 

#or we do 
(1:10) - (10:1)

#now try this 
(1:6) + (1:5)

#what happens? Why? 

# --- Objects 

x <- 5
x^2 

x <- 3 # make x equal to 3
y <- x*5 # make y equal to 5 times the value of x
z <- y - x # make z equal to the difference between y and x

#what is x, y or z
y
z
x

#what is w equal to? 
w

#any issues with w? Why? 


# ----- character strings

first_name <- "Your name"
last_name <- "whatever you want to add here"
paste("My name is", first_name, last_name)

#add other text inside the "". Any text or characters inside these "" symbols is treated as text. FOr example  
first_name <- "Really? My first name? "
last_name <- ")^*${P can't pronouce it anyway"
paste("My name is", first_name, last_name)

# ---- Object classes 

x <- 89
y <- "hello there"
z <- TRUE
class(x)

#check the class of each object 

#note that R automatically assigns a class to an object, depending on the variable assigned to an object 
s1 <- "oops"
n1 <- 9

s1*n1

#try to build different classes 

## check what happens if just ONE variable in your vector is not numeric. This is often an issue, we get an error and have no idea why. Always check what class R assigned to your object 
s2 <- c(2, 3, 5, "cat")
class(s2)

# ------- Logic statements

# check if two sides of the equation are equal 
(2+3) == 5
(2+3) == 7

# or we compare different classes 
(2+3) == "dog"
"dog" == "dog"

#why would you want to do it? Let's say you want to know whether some objects are identical in their character values

#for this we assign a character value to one object (a) and to another object (b) and compare them 
# remember, we are avoiding doing this with a symbol = although it would work too 
a <- "dog" #you could also say a = "dog"
b <- "dog" 
a == b

#by the way different commas also work 
b <- 'dog'
a == b

#or what about this statement? 
A == b

#Note, capital LetTers In R aRe imporTant!! 

#but see what happens now. Why? 
c <- "dog "
a == c

#is a equal to c? 

# ---- Functions 

#let's calculate a mean 
(5+10+3)/3

#or we assign 5, 10 and 3 to a vector x and then calculate its mean 

x <- c(5, 10, 3)

mean (x)

#But note you cannot do 
mean (5, 10, 3)

#this is because function mean only takes ONE argument, only the first value in the brackets. So if you try 
mean(10, 5, 3)

# to know what arguments are taken by a function use ?
?mean

#so if our vector had NA values
x <- c(5, 10, 3, NA)
mean(x)

#we can see that if at least one value is NA, mean will also by default is NA. But if you want R to ignore NA values you can tell the function to do it 
mean(x, na.rm = TRUE) #na.rm refers to NA remove

# --- install and load packages
install.packages("readr")

#note the quotations are needed!
install.packages(readr)

#once the package is install you need to load it. You need to do it every time you run your R script 

library(readr)

# --- projects and scripts 

#create project and a new script inside this project. Place the data file in the project directory

read.csv("example_data.csv")

library(readr)
read_csv("example_data.csv")

fish_size_0 <- read.csv("example_data.csv")
class(fish_size_0)

fish_size <- read_csv("example_data.csv")
class(fish_size)

head(fish_size)
tail(fish_size)
View(fish_size) #note it starts with a capital letter for some reason! (not sure why, just becaus someone decided like this)

#if you have a large dataset, you don't want to view it as it will crash R 
View(head(fish_size))
#or indicate how many rows 
View(head(fish_size, n = 20))

library(dplyr)
glimpse(fish_size)

#and finally install the package "tidyverse" and check https://tidyverse.org

## Go to Freddie's GitHub repository https://github.com/FreddieJH/r_workshop to get slides from the talk 

# __________________________________________________________________
# and finally some final questions and tasks for your free time :)

# Basic commands ---------------------------------------------------------------

# Assign a numeric variable (any number you like) to an object (name the object num1)
# Name a character string variable (any word you like) to an object (name the object string1), note the character string must be wrapped in quotation marks (otherwise R thinks it is an object)
# add 3 to num1
# multiply the first 10 even numbers by the first 10 odd numbers


# Lets produce some errors/warnings --------------------------------------------

# add 3 to string1 (error in object class)
# type string2 in the console (unknown object class)
# Add NA to your numeric variable (including NA values error)


# Getting help with coding -----------------------------------------------------

# 1. Googling/forums
# 2. ChatGPT 


# Questions --------------------------------------------------------------------

# In your own words...

# What is a function?
# What is an argument?
# What is an object?
# What does "syntax" mean?
# What is a class?
# Name 3 arguments of the read_csv() function
# What package does the str_detect() function come from?
# What is a vector?
# Name two types of vectors
# What is a package?
# Name 5 packages within the tidyverse packages
# What symbol always follows the name of a function?
# What symbol always follows the name of the argument?
# Name 4 data classes





