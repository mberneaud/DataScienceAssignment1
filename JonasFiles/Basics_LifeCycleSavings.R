#############################
# Assignment 1: File structure, version control, R data, descriptive statistics
# Deadline: 04 March 2016
# Starting Date: 18 February 2016 // Last edited: 22 February 2016
# Author: Jonas Markgraf
# Setting the stage for further analysis: loading packages & dataset; set wd
#############################

# Load packages
library(ggplot2)
library(knitr)
library(dplyr)
library(magrittr)

# Load dataset
library(datasets)
data(LifeCycleSavings)

# set working directory
setwd("/Users/jonasmarkgraf/Desktop/DataScienceAssignment1/JonasFiles")

# Detailed information about dataset, incl. description of variables
?LifeCycleSavings