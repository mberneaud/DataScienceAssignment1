# Summary statistics for the "Orange" data set built into R
This folder contains some summary statistics made for the "Orange" data set which can be called from .GlobalEnv in the following way
```r
Orange <- Orange
# or
data("Orange")  # to create a promise of the data
```

## Source files in the analysis
* **[Summary statistics](./summary_statistics.R)**: contains some really basic summary statistics
* **[Graph of circumference over time](./graph_circumference_over_time.R)**: contains code for creating the .png graph in this folder
* **[Graph parameter settings](./setting_graph_params.R)**: contains parameters for the graph called by the source code above

## Description of the data set
_Taken from the R documentation_

>The Orange data frame has 35 rows and 3 columns of records of the growth of orange trees.

### Description of variables
>Tree
  >an ordered factor indicating the tree on which the measurement is made. The ordering is according to increasing maximum diameter.

>age
  >a numeric vector giving the age of the tree (days since 1968/12/31)

>circumference
  >a numeric vector of trunk circumferences (mm). This is probably “circumference at breast height”, a standard measurement in forestry.
