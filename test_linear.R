insurance <- read.csv("insurance.csv", stringsAsFactors = TRUE)
str(insurance)
summary(insurance$charges)
hist(insurance$charges)
table(insurance$region)
cor(insurance[c("age", "bmi", "children", "charges")])
pairs(insurance[c("age", "bmi", "children", "charges")])
library(psych)
pairs.panels(insurance[c("age", "bmi", "children", "charges")])
ins_model <- lm(charges ~ age + children + bmi + sex +
                  smoker + region, data = insurance)
ins_model <- lm(charges ~ ., data = insurance)
ins_model
summary(ins_model)
