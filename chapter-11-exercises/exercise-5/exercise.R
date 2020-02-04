# Exercise 5: dplyr grouped operations

# Install the `"nycflights13"` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
#install.packages("nycflights13")  # should be done already

library("nycflights13")
library("dplyr")
View(flights)
# What was the average departure delay in each month?
typeof(flights$dep_delay)

dep_delay_by_month<- flights %>% 
  group_by(month) %>% 
  summarise(
    meantime = mean(dep_delay, na.rm = TRUE)
  )
print(average_dep_delay)
# Save this as a data frame `dep_delay_by_month`

# Hint: you'll have to perform a grouping operation then summarizing your data


# Which month had the greatest average departure delay?
dep_delay_by_month %>% filter(meantime == max(meantime))

# If your above data frame contains just two columns (e.g., "month", and "delay"
# in that order), you can create a scatterplot by passing that data frame to the
# `plot()` function
plot(dep_delay_by_month)

# To which destinations were the average arrival delays the highest?
most_delay_dest <-flights %>% 
  group_by(dest) %>% 
  summarise(
    delay = mean(dep_delay, na.rm = TRUE)
  ) %>% 
  filter(delay == max(delay,na.rm = TRUE ))
print(most_delay_dest)
# Hint: you'll have to perform a grouping operation then summarize your data
# You can use the `head()` function to view just the first few rows


# You can look up these airports in the `airports` data frame!
View(airports)

# Which city was flown to with the highest average speed?
flights %>% group_by(dest) %>% 
  summarise(
    speed = mean(distance/air_time, na.rm = TRUE)
  ) %>% 
  filter(speed == max(speed, na.rm = TRUE))

