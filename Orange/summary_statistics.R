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
tree.mean.circumference <- tapply(Orange$circumference, Orange$Tree, mean)

median.circumference <- median(Orange$circumference)
tree.median.circumference <- tapply(Orange$circumference, Orange$Tree, median)

sd.circumference <- sd(Orange$circumference)
tree.sd.circumference <- tapply(Orange$circumference, Orange$Tree, sd)

# I grouped the three summary statistics I created for all tree IDs into a
# data frame

# I created a vector containing the names of the trees, taking the IDs from the
# names of the df created through tapply, as the df was ordered ascendingly
# from lowest to highest
tree.names <- paste("Tree No.", names(tree.mean.circumference), sep = " ")

# I bound all the vectors together into a matrix which I converted to a df 
summary.df <- data.frame(cbind(tree.names, tree.mean.circumference, tree.median.circumference,
                    tree.sd.circumference))

# Then I created some decent names for the columns
colnames(summary.df) <- c("Tree ID", "Mean circumference", "Median circumference",
                          "Std.Dev. of circumference")

