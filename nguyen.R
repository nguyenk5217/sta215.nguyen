# set wd 
setwd("H:/sta215")

library(readr)
library(dplyr)
library(haven)

data <- read_delim("raw_data.csv")

mean(fifth_graders$reading_score, na.rm = TRUE)

sd(data$gdp_per_capita, na.rm = TRUE)

table(data$land_locked, data$lon_trm)

table(data$lon_trm)
