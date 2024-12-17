# set wd 
setwd("H:/sta215")

library(readr)
library(dplyr)
library(tidytext)
library(ggplot2)
library(haven)
library(forcats)
library(psych)
library(readxl)

data_raw <- read_csv("raw_data.csv")
dataset <- na.omit(data_raw)
view(dataset)

## desciptives
mean(dataset$nhwhite)
sd(dataset$nhwhite)
min(dataset$nhwhite)
max(dataset$nhwhite)

table(dataset$crime_avg, dataset$nhwhite)
table(dataset$crime_avg)
mean(dataset$ crime_avg, na.rm = TRUE)
sd(dataset$crime_avg, na.rm = TRUE)
mean(dataset$nhwhite, na.rm = TRUE)
sd(dataset$nhwhite, na.rm + TRUE)

##plot(dataset$crime_avg, dataset$crime_avg)
## 1. The scatterplot

plot(dataset$crime_avg, `dataset$crime_avg`, main="Scatterplot of pop_area and crime_avg", xlab="X values", ylab="Y values", col="blue", pch=19)

meany <- mean(dataset$crime_avg)
meanx <- mean(dataset$pop_area)
abline(v = meanx, col = "black")
abline(h = meany, col = "black")
lm<- lm(crime_avg ~ nhwhite, data = dataset)
summary(lm)
abline(lm, col = "red")

linear_plot <- plot(dataset$crime_avg, dataset$nhwhite)
print(linear_plot)
meany <- mean(dataset$crime_avg)
meanx <- mean(dataset$nhwhite)
abline(h = meanx, col = "black")
abline(v = meany, col = "black")
linear_relationship <- lm(crime_avg ~ nhwhite, data = dataset)
summary(linear_relationship)
abline(linear_relationship, col = "red")

## 2. The residual plot

plot(dataset$crime_avg, residuals(linear_relationship))
plot(dataset$nhwhite, residuals(linear_relationship))

abline(h = 0, col = "red")

## 3. The boxplot

lm(crime_avg ~ cities, data = dataset)
aov(crime_avg ~ cities, data = dataset)
summary(crime_avg ~ cities, data = dataset)
boxplot(crime_avg ~ cities, data = dataset)

lm(crime_avg ~ nhwhite, data = dataset)
aov(crime_avg ~ nhwhits, data = dataset)
summary(pcrime_avg ~ nhwhit, data = dataset)

