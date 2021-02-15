# Reading in necessary libraries

library(tidyverse)
library(readr)

# Reading in two data sets. One is all NBA games in the 2020-2021 season 
# through 2/15/21, the other is NBA games in the 2019-2020 season through a
# similar time frame (roughly 27 games).

summary_20_21 <- read.csv("league_summary_20_21.csv")
summary_19_20 <- read.csv("league_summary_19_20.csv")

four_factors_20_21 <- read.csv("four_factors_20_21.csv")
four_factors_19_20 <- read.csv("four_factors_19_20.csv")

shooting_20_21 <- read.csv("shooting_20_21.csv")
shooting_19_20 <- read.csv("shooting_19_20.csv")

play_context_20_21 <- read.csv("play_context_20_21.csv")
play_context_19_20 <- read.csv("play_context_19_20.csv")


