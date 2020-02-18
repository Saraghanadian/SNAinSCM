# SNAinSCM

This package offers an approach for the determination of social network analysis metrics (SNA) in the supply chain. SNA metrics including degree centrality, strength centrality, and reducing factor are provided to be used in the supply chain network design. 

Functions in the package allows to:

  - Execute the calculation of metrics based on weighted assignment matrix;
  - Analyze the obtained results of the supply chain networks;
  - Plot bar charts for all metrics


A complete illustration of all features and functions can be found at
the link:

<https://barcaroli.github.io/SamplingStrata/>

## Installation

You can install SNAinSCM from github with:

``` r
install.packages("SNAinSCM")
devtools::install_github("saraghanadian/ SNAinSCM ")
```

## Example with the “atomic” method

``` r
library(SNAinSCM)

# Load data ---------------------------------------------------------------------------------
data("assignment")
head(assignment)
#   From  To  Value 
# 1   1  1      0  
# 2   1  2      0   
# 3   1  3      0   
# 4   1  4      0  
# 5   1  5      0  
# 6   1  6      0   

# Define out-degree centrality, out-strength, R-disperse -----------------------------------------------------------------
My_data <- assignment
out_degree(my_data) 
#Facility      degree_centrality
#8                     9
#19                    8
#26                    3
#33                    17
#34                    5
#35                 1
#40                 1
#41                 2
#43                 1
#63                 3

out_strength(my_data)
  Facility strenght_centrality
#8                64231
#19               99017
#26               40871
#33              147407
#34             1185395
#35              569499
#40              569499
#41              602032
#43              569499
#63             1168344


R_disperse(my_data)

#Facility      R_disperse
#8               0.7654
#19              0.6583
#26              0.5264
#33              0.7221
#34              0.4341
#35                NA
#40                NA
#41              0.5540
#43                NA
#63              0.6917


