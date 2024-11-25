# set wd 
setwd("H:/sta215")

library(readr)
library(dplyr)
library(haven)

data <- read_delim("raw_data.csv")

table(dataset$ crime_avg)
mean(dataset$ crime_avg, na.rm = TRUE)
sd(dataset$crime_avg, na.rm = TRUE)

table(data$land_locked)
mean(dataset$land_locked)
sd(dataset$land_lcoked)

table(dataset$pop_area)
mean(dataset$pop_area)
sd(dataset$pop_area)
