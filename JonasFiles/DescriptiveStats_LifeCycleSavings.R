#############################
# Assignment 1: File structure, version control, R data, descriptive statistics
# Deadline: 04 March 2016
# Starting Date: 18 February 2016 // Last edited: 22 February 2016
# Author: Jonas Markgraf
# Descriptive statistics: measures of central tendency and dispersion
#############################

# dynamically linking to Basics file
source("Basics_LifeCycleSavings.R")

# Basic summary statistics
summary(LifeCycleSavings)

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
par(mfcol = c(1, 2))
hist(LifeCycleSavings$dpi, 
     main="Per-Capita Income Distribution", 
     xlab="Per-Capita Income", 
     ylab="Number of Countries")
hist(LifeCycleSavings$sr, 
     main="Aggregated Savings Distribution", 
     xlab="Aggregated Savings", 
     ylab="Number of Countries")

hist(LifeCycleSavings$ddpi, 
     main="Distribution of Per-Capita Income Growth", 
     xlab="% growth of per-capita GDP", 
     ylab="Number of Countries")

# Measures of dispersion (standard deviation, range, IQR, boxplots)

## loop for standard deviation
for (i in 1:5) {
  LifeCycleSavings[, i] %>%
    sd() %>%
    paste(names(LifeCycleSavings)[i], ., "\n") %>%
    cat()
}

## loop for range
for (i in 1:5) {
  LifeCycleSavings[, i] %>%
    range() %>%
    paste(names(LifeCycleSavings)[i], ., "\2n") %>%
    cat()
}

## range for 2 key variables
range(LifeCycleSavings$sr)
range(LifeCycleSavings$dpi)

## interquartile range for 2 key variables
IQR(LifeCycleSavings$sr)
IQR(LifeCycleSavings$dpi)

## boxplots for key variables: Aggregated Savings and Per-Capita Income
par(mfcol = c(1, 2))
boxplot(LifeCycleSavings$sr)
boxplot(LifeCycleSavings$dpi)

