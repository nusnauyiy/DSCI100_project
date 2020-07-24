library(tidyverse)
library(repr)
library(caret)
library(dplyr)

pulsar <- read_csv("HTRU_2.csv", col_names = FALSE)

X_train <- select(pulsar, -X9) %>%
    scale(center = TRUE, scale = TRUE)

Y_train <- select(pulsar, X9) %>%
    #mutate(X9 = toString(X9)) %>%
    #mutate(X9 = ifelse(X9 == "1", "Pulsar", "Noise")) %>%
    mutate(X9 = as.factor(X9)) %>%
    unlist(use.names = FALSE)

k <- data.frame(k = 12)

#set.seed(123)

#classifier <- train(
#  x = X_train, y = Y_train, method = "knn",
#  trControl = trainControl("cv", number = 10),
#  tuneLength = 20
#)

classifier <- train(x = X_train, y = Y_train, method = "knn", tuneGrid = k)
#GODDAMN K ACCURACY KEEPS CHANGING, even with same k value!!!!!!!!!!!
print(classifier)
