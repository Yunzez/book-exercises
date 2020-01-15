# Exercise 3: writing and executing functions

# Define a function `add_three` that takes a single argument and
# returns a value 3 greater than the input
add_three <- function(x){
  output <- sum(x,3)
  return(output)
}

# Create a variable `ten` that is the result of passing 7 to your `add_three` 
# function
ten<- add_three(7)

# Define a function `imperial_to_metric` that takes in two arguments: a number 
# of feet and a number of inches
# The function should return the equivalent length in meters
imperial_to_metric <- function(feet, inch){
  cm<- inch*2.54 + feet*12*2.54
  m<- cm/100
  return(m)
}

# Create a variable `height_in_meters` by passing your height in imperial to the
# `imperial_to_metric` function
hight_in_meters<- imperial_to_metric(5,9)



