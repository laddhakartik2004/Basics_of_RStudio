# File:   HierarchicalClustering.R

library(datasets)  # Load base packages manually

# Use pacman to load add-on packages as desired
pacman::p_load(pacman, tidyverse) 

#Load data from base package
?mtcars
head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]  # Select variables
head(cars)

# Save hierarchical clustering to "hc." This code uses
# pipes from dplyr.
hc <- cars   %>%  # Get cars data
      dist   %>%  # Compute distance/dissimilarity matrix
      hclust      # Computer hierarchical clusters
  
plot(hc)          # Plot dendrogram

# Add boxes to plot
rect.hclust(hc, k = 2, border = "gray")
rect.hclust(hc, k = 3, border = "blue")
rect.hclust(hc, k = 4, border = "green4")
rect.hclust(hc, k = 5, border = "darkred")
