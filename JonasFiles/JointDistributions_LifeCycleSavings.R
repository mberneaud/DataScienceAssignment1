#############################
# Assignment 1: File structure, version control, R data, descriptive statistics
# Deadline: 04 March 2016
# Starting Date: 18 February 2016 // Last edited: 22 February 2016
# Author: Jonas Markgraf
# Joint distributions between several variables
#############################

source("Bascis_LifeCycleSavings.R")

# Joint distributions: Potential explanatory variables for savings ratio

## Correlation plots between Savings and Demographic proxies
par(mfcol = c(1, 2))
ggplot(LifeCycleSavings, aes(pop15, sr)) + 
  geom_point() + 
  geom_smooth() +
  ggtitle("Correlation between Share of Population under 15 Years and 
          Aggregated Savings") +
  xlab("Share of Population under 15 Years (%)") +
  ylab("Aggregated Savings")

ggplot(LifeCycleSavings, aes(pop75, sr)) + 
  geom_point() + 
  geom_smooth() +
  ggtitle("Correlation between Share of Population older than 75 Years and
          Aggregated Savings") +
  xlab("Share of Population over 75 Years (%)") +
  ylab("Aggregated Savings")

## Correlation plots: Savings and income specifications
ggplot(LifeCycleSavings, aes(dpi, sr)) + 
  geom_point() + 
  geom_smooth() + 
  ggtitle("Savings-Per Capita GDP Correlation") +
  xlab("Per Capita Income") +
  ylab("Aggregated savings")

ggplot(LifeCycleSavings, aes(ddpi, sr)) + 
  geom_point() + 
  geom_smooth() +
  ggtitle("Correlation between Per-Capita Income Growth and Aggregated Savings") +
  xlab("Per-Capita Income Growth (%)") +
  ylab("Aggregated Savings")


## statistical tests of correlations

cor.test(LifeCycleSavings$dpi, LifeCycleSavings$sr)
cor.test(LifeCycleSavings$ddpi, LifeCycleSavings$sr)
cor.test(LifeCycleSavings$pop15, LifeCycleSavings$sr)
cor.test(LifeCycleSavings$pop75, LifeCycleSavings$sr)