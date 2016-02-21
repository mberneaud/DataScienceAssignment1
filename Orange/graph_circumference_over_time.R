############################
# Introduction to Collaborative Data Science Pair Assignment 1 
# Author: Malte Berneaud-Kötz
# Date created: 18.02.16
# Last edited: 18.02.16
# A descriptive graph for the Orange dataset

############################
# Created a graph plotting circumference over time
############################

# sourcing parameters for later graphs from source file
source("setting_graph_params.R")

# Create a plot comparing growth of different trees as they age
plot.new()  # resetting existing plots

# creating the plot with lines and points, plus setting labels
plot(Orange$age, Orange$circumference, type = "b", 
     main = "Circumference of orange trees over time", 
     xlab = "Age of trees in days (since 1968/12/31)", 
     ylab = "Trunk circumference in mm")
dev.print(png, "circumference_over_time.png", width = 1024, height = 720)

# Additional plot made from summary.df created in other source file
# Sourcing the data for summary.df
source("summary_statistics.R")

# creating a barplot of the different means
barplot(summary.matrix, beside = TRUE,
        main = "Summary statistics for circumference of all trees",
        xlab = "Name of summary statistic",
        ylab = "Tree trunk circumference",
        names.arg = names(summary.df$`Tree ID`))
dev.print(png, "summaries_graped.png", width = 1024, height = 720)

###################
# Cleaning up
###################

# restoring default graph parameters
par(par.backup)
