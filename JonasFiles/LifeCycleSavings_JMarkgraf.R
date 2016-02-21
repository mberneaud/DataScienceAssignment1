#############################
# Assignment 1: File structure, version control, R data, descriptive statistics
# Deadline: 04 March 2016
# Starting Date: 18 February 2016 // Last edited: 21 February 2016
# Author: Jonas Markgraf
# Descriptive statistics of R database "LifeCycleSavings"
# contains: savings ratio data 1960-70 in 50 countries, 5 variables
#############################

# Load packages
library(ggplot2)
library(knitr)
library(dplyr)
library(magrittr)

# Load dataset
library(datasets)
data(LifeCycleSavings)

# Detailed information about dataset, incl. description of variables
?LifeCycleSavings

# Basic summary statistics
summary(LifeCycleSavings)

# Interpretation: The summary command gives a rough overview of the #
# characteristics of the variables (mean, median, minimum/maximum, 25th & 75th
# percentile). Thus, it provides first measures for the central tendency as
# well as of the dispersion.

# Measures of central tendency (Mean, median, histogram)

## loop for mean of each variable
for (i in 1:5) {
  LifeCycleSavings[, i] %>%
  mean() %>%
  paste(names(LifeCycleSavings)[i], ., "\n") %>%
  cat()
}

## loop for median of each variable
for (i in 1:5) {
  LifeCycleSavings[, i] %>%
    median() %>%
    paste(names(LifeCycleSavings)[i], ., "\n") %>%
    cat()
}

## General distribution of key variables
hist(LifeCycleSavings$dpi, 
     main="Distribution of Per-Capita Income", 
     xlab="Per-Capita Income", 
     ylab="Number of Countries")

hist(LifeCycleSavings$sr, 
     main="Distribution of Aggregated Savings", 
     xlab="Aggregated Savings", 
     ylab="Number of Countries")

hist(LifeCycleSavings$ddpi, 
     main="Distribution of Per-Capita Income Growth", 
     xlab="% growth of per-capita GDP", 
     ylab="Number of Countries")

# Measures of dispersion (standard deviation, range, IQR, boxplots)
sd(LifeCycleSavings$sr)
range(LifeCycleSavings$sr)
IQR(LifeCycleSavings$sr)
boxplot(LifeCycleSavings$sr)

sd(LifeCycleSavings$dpi)
range(LifeCycleSavings$dpi)
IQR(LifeCycleSavings$dpi)
boxplot(LifeCycleSavings$dpi)


# Joint distributions: Potential explanatory variables for savings ratio

ggplot(LifeCycleSavings, aes(dpi, sr)) + geom_point() + geom_smooth()
cor.test(LifeCycleSavings$dpi, LifeCycleSavings$sr)

ggplot(LifeCycleSavings, aes(pop15, sr)) + geom_point() + geom_smooth()
cor.test(LifeCycleSavings$pop15, LifeCycleSavings$sr)

ggplot(LifeCycleSavings, aes(pop75, sr)) + geom_point() + geom_smooth()
cor.test(LifeCycleSavings$pop75, LifeCycleSavings$sr)

ggplot(LifeCycleSavings, aes(ddpi, sr)) + geom_point() + geom_smooth()
cor.test(LifeCycleSavings$ddpi, LifeCycleSavings$sr)
