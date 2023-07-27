# [Assignment 1.2 Report](https://github.com/Elbert-Ainstein/Brown/blob/main/Assignment%201-2.md)

## Essential Questions

### Question 1

The multiple linear regression equation is described as
> Wins = Intercept + Coefficient1 x Field Goal% + Coefficient2 x Field Goal % Allowed

using this code:

```r
model <- lm(data$Wins ~ data$`Field Goal%` + data$`Field Goal % Allowed`)
```

### Question 2

The Slopes in the Coefficients section might mean that there is an increase in Field goals when Field Goals allowed decreases.

### Question 3

using this code:

```r
# Predict
newdata <- data.frame(`Field Goal%` = 0.45, `Field Goal % Allowed` = 0.44)
pred <- predict(model, newdata)
summary(pred)
```

it said that the win rate should be 41%.

### Question 4

The regression analysis should be valid, as the Residuals are balanced, with a median near 0.

### Question 5

This is the result of running:

```r
Call:
lm(formula = data$Wins ~ data$`Field Goal%` + data$`Field Goal % Allowed`)

Residuals:
     Min       1Q   Median       3Q      Max
-10.7846  -4.7495  -0.7546   3.8863  16.3393

Coefficients:
                            Estimate Std. Error t value Pr(>|t|)
(Intercept)                  41.6448    74.2479   0.561    0.579
data$`Field Goal%`            4.8408     1.0178   4.756 5.87e-05 ***
data$`Field Goal % Allowed`  -4.8577     0.9547  -5.088 2.40e-05 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 7.054 on 27 degrees of freedom
Multiple R-squared:  0.7331,    Adjusted R-squared:  0.7134
F-statistic: 37.09 on 2 and 27 DF,  p-value: 1.799e-08
```

It shows that it reaches a 0.001 level of significance.

### Question 6

Combined with the results above, it means that the result is highly unlikely to be out of pure luck. The smaller the p-value, the more unlikely it was by luck.

### Question 7

The Multiple R-squared is at 73.31%, which indicates that 73% of info is explainable by the model, and it is a good fit, as it is above the favorable (70%) threshold

### Question 8

The Adjusted R-squared is 71.34%. Similar to R-squared but it takes into account the number of predictors in the model. It adjusts the statistic based on the number of predictors, penalizing the addition of uninformative predictors.

### Question 9

Both variables contribute a lot to the model, but the field goal % contributes more. The most appropriate model is to use the Field Goal %.

### Question 10

The respective P-values are

>Field Goal%: 5.87e-05 ***
>Field Goal % Allowed: 2.40e-05***

Both variables contribute a lot to the model, but the field goal % contributes more.

## Additional Questions

### Question 11

- Home Court Advantage
- Injuries
- Coaching
- Schedule

### Question 12

Some Variables might get ignored, and we often don't take into account of which team normally beats which team.

### Question 13

- See which stock might increase in price
- Soccer team analysis
