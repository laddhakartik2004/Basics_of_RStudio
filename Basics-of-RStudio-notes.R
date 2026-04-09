#File- Basics-of-RStudio-notes.R

library(datasets)  
#To load built-in datasets

#Summarizing data

head(iris)         
#Shows the first six lines for iris data

summary(iris)      #Entire data frame
#Summary stats (mean, quartile, freq)
summary(iris$Species)       # Categorical variable
summary(iris$Sepal.Length)  # Quantitative variable

plot(iris)         
#Scatterplot matrix

#For add-on packages, use pacman. It will 
#install packages, if needed, and then load them.
install.packages("pacman")

#Then load the package by using:

require(pacman)  
#Confirmation message.
library(pacman)  
#No message.

#Or, by using "pacman::p_load" you can use the p_load
#function from pacman without actually loading pacman.

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr) 

#Clearing packages

p_unload(dplyr, tidyr, stringr)
p_unload(all)  
#For clearing add-on packages

detach("package:datasets", unload = TRUE)  
#For clearing Base packages

#Clearing plots

dev.off()  
#if there is a plot, that is.

#Clearing console

cat("\014")  
#or simply, ctrl+L

