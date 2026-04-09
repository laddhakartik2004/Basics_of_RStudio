# File: Barplot-Scatterplot.R

library(datasets)

?mtcars
head(mtcars)

barplot(mtcars$cyl)             # Doesn't work

# Need a table with frequencies for each category
cylinders <- table(mtcars$cyl)  # Create table
barplot(cylinders)              # Bar chart
plot(cylinders)                 # Line plot

# Check univariate distributions
hist(mtcars$wt)
hist(mtcars$mpg)

# Basic X-Y plot for two quantitative variables
plot(mtcars$wt, mtcars$mpg)

# Add some customisations
plot(mtcars$wt, mtcars$mpg,
     pch = 19,         # Solid circle
     cex = 1.5,        # Make size 150% 
     col = "#cc0000",  # Red
     main = "MPG as a Function of Weight of Cars",
     xlab = "Weight (in 1000 pounds)",
     ylab = "MPG")