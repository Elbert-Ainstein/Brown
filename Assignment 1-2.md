# Assignment 1.2 Report

## Question 1:

The multiple linear regression equation is described as 
> Wins = Intercept + Coefficient1 x Field Goal% + Coefficient2 x Field Goal % Allowed

using this code:

```r
model <- lm(NBA$Wins ~ NBA$`Field Goal%` + NBA$`Field Goal % Allowed`)
```