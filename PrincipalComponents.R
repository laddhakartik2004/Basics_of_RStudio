# File: PrincipalComponents.R

# use "pacman"
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
  ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
  stringr, tidyr) 

library(datasets)  # Load base packages manually

# Loading data
head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)] #select variables
head(cars)

# Computing PCA

# For entire data frame
pc <- prcomp(cars,
        center = TRUE,  # Centers means to 0 
        scale = TRUE)   # Sets unit variance 

# Specify variables by

pc <- prcomp(~ mpg + cyl + disp + hp + wt + qsec + am +
        gear + carb, 
        data = mtcars, 
        center = TRUE,
        scale = TRUE)

# Get summary stats
summary(pc)

# Screeplot for number of components
plot(pc)

# Get standard deviations and rotation
pc

# How cases load on PCs
predict(pc) %>% round(2)

# Biplot of first two components
biplot(pc)