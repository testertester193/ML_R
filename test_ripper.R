mushrooms <- read.csv("mushrooms.csv", stringsAsFactors = TRUE)
mushrooms$veil_type <- NULL
table(mushrooms$type)
library(RWeka)
mushroom_1R <- OneR(type ~ ., data = mushrooms)
mushroom_1R
summary(mushroom_1R)
mushroom_JRip <- JRip(type ~ ., data = mushrooms)
mushroom_JRip

