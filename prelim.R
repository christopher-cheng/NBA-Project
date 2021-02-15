# Reading in necessary libraries

library(tidyverse)
library(readr)

# Reading in two data sets. One is all NBA games in the 2020-2021 season 
# through 2/15/21, the other is NBA games in the 2019-2020 season through a
# similar time frame (roughly 27 games). This is done for four different 
# categories of data: league summary statistics, statistics on the "four
# factors", shooting, and play context (only halfcourt offensive sets).

summary_20_21 <- read.csv("league_summary_20_21.csv")
summary_19_20 <- read.csv("league_summary_19_20.csv")
summary <- right_join(summary_20_21, summary_19_20, by = "Team")
summary <- summary[-c(1),]

summary_try <- summary %>%
  
  pivot_longer(Point.Diff.Rank.y:Spread.Diff.y, names_to = "category", values_to = "value")

four_factors_20_21 <- read.csv("four_factors_20_21.csv")
four_factors_19_20 <- read.csv("four_factors_19_20.csv")
four_factors <- right_join(four_factors_20_21, four_factors_19_20, by = "Team")
four_factors <- four_factors[-c(1),]

shooting_20_21 <- read.csv("shooting_20_21.csv")
shooting_19_20 <- read.csv("shooting_19_20.csv")
shooting <- right_join(shooting_20_21, shooting_19_20, by = "Team")
shooting <- shooting[-c(1),]

shooting_try <- shooting %>%
  substr(All.Three.x, 1,4)

play_context_20_21 <- read.csv("play_context_20_21.csv")
play_context_19_20 <- read.csv("play_context_19_20.csv")
play_context <- right_join(play_context_20_21, play_context_19_20, by = "Team")
play_context <- play_context[-c(1),]

summary %>%
ggplot(aes(x = Spread.Diff.x)) +
  geom_histogram(bins = 50)

shooting %>%
  ggplot(aes(x = All.Three.x, y = All.Three.y)) + 
  geom_point() + 
  geom_label(aes(label = Team))






