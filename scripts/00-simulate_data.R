#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Data: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
set.seed(123)

# prepare eight cups of tea: four with milk added first and the other four with milk added last
cups <- rep(c("milk_first", "tea_first"), each = 4)
  # rep() repeats something a certain number of times

# randomize the order of all eight cups
random_cups <- sample(cups)

# create a dataset of Ian's tea groupings in four separate experiments
experiment1 <- sample(random_cups, size = 8)
experiment2 <- sample(random_cups, size = 8)
experiment3 <- sample(random_cups, size = 8)
experiment4 <- sample(random_cups, size = 8)
tea_data <- data.frame(experiment = rep(1:4, each = 8),
                       cup_number = 1:8,
                       cup_type = random_cups,
                       tester_grouping = c(experiment1, experiment2, experiment3, experiment4)) |>
  mutate(result = ifelse(cup_type == tester_grouping, "Right", "Wrong"))


tea_data