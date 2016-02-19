#######################
# Introduction to Collaborative Data Science Pair Assignment 1 
# Author: Malte Berneaud-Kötz
# Date created: 18.02.16
# Last edited: 18.02.16
# Summary statistics for the "Orange" R data set

# making a promise of the data set 
# coverting the hidden dataset into a visible one for convenience
Orange <- Orange

# getting an overview of the variables in the data set
summary(Orange)

############################
# Some summary statistics 
############################

# calculated the mean circumference for all the trees
mean.circumference <- mean(Orange$circumference)
# calculated the means of each tree individually
tree.means <- tapply(Orange$circumference, Orange$Tree, mean)

# calculated the median circumference of all trees together
median.circumference <- median(Orange$circumference)
# calculated the median circumference of all trees individually
tree.medians <- tapply(Orange$circumference, Orange$Tree, median)

# calculated the standard deviation for all trees
sd.circumference <- sd(Orange$circumference)
# calculated the standard deviation for each tree individually
tree.sds <- tapply(Orange$circumference, Orange$Tree, sd)

# I grouped the three summary statistics I created for all tree IDs into a
# data frame

# I created a vector containing the names of the trees, taking the IDs from the
# names of the df created through tapply, as the df was ordered ascendingly
# from lowest to highest
tree.names <- paste("Tree No.", names(tree.means), sep = " ")

# I bound all the vectors together into a matrix
summary.matrix <-  cbind(tree.means, tree.medians, tree.sds)

# Then I made a df from it and added a new row with the tree.names vector
summary.df <- data.frame(summary.matrix)
summary.df$Tree.ID <- tree.names

# Then I created some decent names for the columns
colnames(summary.df) <- c("Tree ID", "Mean circumference", "Median circumference",
                          "Std.Dev. of circumference")

