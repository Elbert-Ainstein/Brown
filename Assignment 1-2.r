setwd("E:/Brown")
library(readxl)
library(ggplot2)

# Read in Data
NBA <- read_excel("NBA.xlsx")

# Do Linear Regression
model <- lm(NBA$Wins ~ NBA$`Field Goal%` + NBA$`Field Goal % Allowed`)

summary(model)
