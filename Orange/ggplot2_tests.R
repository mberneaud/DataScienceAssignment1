#######################
# Introduction to Collaborative Data Science Pair Assignment 1 
# Author: Malte Berneaud-Kötz
# Date created: 21.02.16
# Last edited: 21.02.16
# Playing around with ggplot2 and the "Orange" data set 

# loading library
library(ggplot2)

tree.growth <- ggplot(Orange, aes(x = age, y = circumference, colour = Tree)) + geom_line()
print(tree.growth)
dev.print(png, "ggplot_tree_growth.png", width = 1024, height = 720)

summary.stats <- ggplot(summary.df, aes(y = 'Mean circumference', x = 'Tree ID'))
summary.stats + geom_bar(stat = "identity")



### Test cases from R Graphics Cookbook
dat <- data.frame(xval = 1:4, yval = c(3, 5, 6, 9), group = c("A", "B", "A", "B"))

p <- ggplot(dat, aes(x=xval, y=yval, colour = group))
p + geom_point() + scale_x_continuous(limits = c(0, 8))
p + geom_point() + scale_color_manual(values = c("orange", "forestgreen"))
