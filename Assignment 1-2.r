setwd("E:/Brown")
library(readxl)
library(ggplot2)
library(dplyr)
library(broom)

# Read in Data
data <- read_excel("NBA.xlsx")
View(data)

# Do Linear Regression
model <- lm(data$Wins ~ data$`Field Goal%` + data$`Field Goal % Allowed`)
summary(model)

# Predict
newdata <- data.frame(`Field Goal%` = 0.45, `Field Goal % Allowed` = 0.44)
pred <- predict(model, newdata)
summary(pred)

# Residuals
res <- residuals(model)
summary(model)