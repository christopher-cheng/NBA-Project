# Reading in necessary libraries

library(tidyverse)
library(readr)

# Reading in two data sets. One is all NBA games in the 2020-2021 season 
# through 2/15/21, the other is NBA games in the 2019-2020 season through a
# similar time frame (roughly 27 games).

ctg_20_21 <- read.csv("league_summary_20_21.csv")
ctg_19_20 <- read.csv("league_summary_19_20.csv")


