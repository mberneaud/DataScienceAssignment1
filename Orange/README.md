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
* **[Tests with ggplot2 graphs](./ggplot2_tests.R)**: contains some experimenting trying to reproduce the graphs created with the base package with ggplot2

## Results of the analysis

Preface: I am not quite sure whether it actually makes sense to report the below summary statistics for the data set I selected, as it graphs time series data as opposed to cross-sectional data where those measures of distributions make more sense.

### Measures of central tendency
Overall, the mean circumference of trees across the entire study period and across all trees is 115.86 centimeters. The means of the individual trees is found in the table below:

| Tree   | Mean of circumference |
|--------|-----------------------|
| Tree 1 | 99.6 cm               |
| Tree 2 | 135.29 cm             |
| Tree 3 | 94.0 cm               |
| Tree 4 | 139.29 cm             |
| Tree 5 | 111.14 cm             |

I calculated the medians across all trees, which is 115 cm. Additionally, I calculated the medians for each of the individual trees, as given in the table below:

| Tree   | Median of circumference |
|--------|-------------------------|
| Tree 1 | 115 cm                  |
| Tree 2 | 156 cm                  |
| Tree 3 | 108 cm                  |
| Tree 4 | 167 cm                  |
| Tree 5 | 156 cm                  |

### Measures of dispersion

I calculated the standard deviation for the entire data set, which is 57.49. Moreover, I presented the standard deviations among the different trees below:

| Tree   | Std. dev. of circumference |
|--------|----------------------------|
| Tree 1 | 43.29 cm                   |
| Tree 2 | 66.24 cm                   |
| Tree 3 | 42.98 cm                   |
| Tree 4 | 71.90 cm                   |
| Tree 5 | 58.86 cm                   |

### Graphing growth over time

For easier understanding, I graphed the growth of the different trees over time
![Circumference over time](https://raw.githubusercontent.com/mberneaud/DataScienceAssignment1/master/Orange/ggplot_tree_growth.png)

Moreover, I also graphed all the summary statistics in the previous sections into a single bar graph to better show differences between the individual trees. Unfortunately, I did not manage yet to include a legend that explains which shade of gray corresponds to which tree number.

![Summary statistics plotted](https://raw.githubusercontent.com/mberneaud/DataScienceAssignment1/master/Orange/summaries_graphed.png)


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
